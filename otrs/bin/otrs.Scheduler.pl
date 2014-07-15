#!/usr/bin/perl
# --
# otrs.Scheduler.pl - provides Scheduler Daemon control on Unix like OS
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU AFFERO General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
# or see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin) . '/Kernel/cpan-lib';
use lib dirname($RealBin) . '/Custom';

use Getopt::Std;
use Proc::Daemon;

use Kernel::Config;
use Kernel::System::Encode;
use Kernel::System::Log;
use Kernel::System::Main;
use Kernel::System::Time;
use Kernel::System::DB;
use Kernel::System::PID;
use Kernel::System::VariableCheck qw(:all);
use Kernel::Scheduler;

# defie PID name
my $PIDName = 'otrs.Scheduler';

# get options
my %Opts = ();
getopt( 'hfapw', \%Opts );

# check if is running on windows
if ( $^O eq "MSWin32" ) {
    if ( $Opts{w} ) {

        my $ConfigObject = Kernel::Config->new();

        # get the scheduler information to restart
        my $Home      = $ConfigObject->Get('Home');
        my $Scheduler = $Home . '/bin/otrs.Scheduler4win.pl';

        # convert Scheduler path to windows format
        $Scheduler =~ s{/}{\\}g;

        # create a new scheduler instance
        # this process could take more than 30 seconds be aware of that!
        # needs a separate process
        system("\"$^X\" \"$Scheduler\" -w 1");
    }
    else {
        print "This program cannot run on Microsoft Windows. Use otrs.Scheduler4win.pl instead.\n";
        exit 1;
    }
}

# help option
if ( $Opts{h} ) {
    _Help();
    exit 1;
}

# check if watch dog mode is requested
if ( $Opts{w} ) {

    my $ExitCode = _WatchDog();
    exit $ExitCode;
}

# check if a stop request is sent
elsif ( $Opts{a} && $Opts{a} eq "stop" ) {

    my $Force = $Opts{f} ? 1 : '';

    my $ExitCode = _Stop( Force => $Force );
    exit $ExitCode;
}

# check if a status request is sent
elsif ( $Opts{a} && $Opts{a} eq "status" ) {

    my $ProcessID = _Status();

    if ( $Opts{p} ) {
        print "$ProcessID\n";
    }
    else {

        # no process ID means that is not running
        if ( !$ProcessID ) {
            print "Not Running!\n";
        }

        # the process ID is not -1
        elsif ( IsPositiveInteger($ProcessID) ) {
            print "Running $ProcessID\n";
        }

        # a process ID of -1, means that is not running but still registered
        else {
            print
                "Not Running, but PID is still registered! Use '-a stop --force' to unregister "
                . "the PID from the database.\n";
        }
    }

    # set the correct exit code
    my $ExitCode = IsPositiveInteger($ProcessID) ? 0 : 1;
    exit $ExitCode;
}

# check if a reload request is sent
elsif ( $Opts{a} && $Opts{a} eq "reload" ) {

    # create common objects
    my %CommonObject = _CommonObjects();

    # get the process ID
    my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

    # no process ID means that is not running
    if ( !%SchedulerPID ) {
        print "Can't get OTRS Scheduler status because it is not running!\n";
        exit 1;
    }

    # send interrupt signal to the process ID to stop it
    kill( 1, $SchedulerPID{PID} );

    # log daemon stop
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "Scheduler Daemon reload request! PID $SchedulerPID{PID}",
    );
    exit 0;
}

# check if start request is sent
elsif ( $Opts{a} && $Opts{a} eq "start" ) {

    my $Force = $Opts{f} ? 1 : '';

    my $ExitCode = _Start( Force => $Force );
    exit $ExitCode;
}

# invalid option, show help
else {
    _Help();
    exit 1;
}

exit 1;

# Internal
sub _Help {
    print "otrs.Scheduler.pl - OTRS Scheduler Daemon\n";
    print "Copyright (C) 2001-2014 OTRS AG, http://otrs.com/\n";
    print "Usage: otrs.Scheduler.pl -a <ACTION> (start|stop|status|reload) [-f (force)]\n";
    print "       otrs.Scheduler.pl -w 1 (Watchdog mode)\n";

    # Not documented!
    # otrs.Scheduler.pl -a status [-p PID]
    #     0 if scheduler is stopped
    #    -1 if scheduler is registered in the DB but is not running
    # <PID> if scheduler is running where <PID> is the process number of the scheduler process

    return 1;
}

sub _CommonObjects {
    my %CommonObject;
    $CommonObject{ConfigObject} = Kernel::Config->new();
    $CommonObject{EncodeObject} = Kernel::System::Encode->new(%CommonObject);
    $CommonObject{LogObject}    = Kernel::System::Log->new(
        LogPrefix => 'OTRS-otrs.Scheduler',
        %CommonObject,
    );
    $CommonObject{MainObject} = Kernel::System::Main->new(%CommonObject);
    $CommonObject{TimeObject} = Kernel::System::Time->new(%CommonObject);
    $CommonObject{DBObject}   = Kernel::System::DB->new(%CommonObject);
    $CommonObject{PIDObject}  = Kernel::System::PID->new(%CommonObject);
    return %CommonObject;
}

sub _Start {
    my %Param = @_;

    {

        # create common objects
        my %CommonObject = _CommonObjects();

        # check if PID is already there
        my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

        if (%SchedulerPID) {

            # get the PID update time
            my $PIDUpdateTime =
                $CommonObject{ConfigObject}->Get('Scheduler::PIDUpdateTime') || 60.0;

            # get current time
            my $Time = time();

            # calculate time difference
            my $DeltaTime = $Time - $SchedulerPID{Changed};

            # remove PID if changed time is greater than
            if ( $DeltaTime > $PIDUpdateTime ) {

                # _AutoStop returns an exit code for the OS, we need the opposit value
                my $PIDDeleteSuccess = !_AutoStop(
                    Message => 'NOTICE: otrs.Scheduler.pl is registered in the DB, but the '
                        . 'registry has not been updated in ' . $DeltaTime . ' seconds!. '
                        . 'The registration will be deleted so the Scheduler can start again without '
                        . 'forcing',
                    DeletePID => 1,
                );

                if ($PIDDeleteSuccess) {
                    %SchedulerPID = ();
                }
            }
        }

        my $ExitCode;

        # check for force to start option
        if (%SchedulerPID) {
            if ( !$Param{Force} ) {
                print
                    "NOTICE: otrs.Scheduler.pl is already running (use '-f' if you want to start it forced)!\n";

                # log daemon already running
                $CommonObject{LogObject}->Log(
                    Priority => 'error',
                    Message =>
                        "Scheduler Daemon tried to start but found an already running service!\n",
                );
                $ExitCode = 1;
                return $ExitCode;
            }

            print
                "NOTICE: otrs.Scheduler.pl was already running but is starting again (force was used)!\n";

            # log daemon forced start
            $CommonObject{LogObject}->Log(
                Priority => 'notice',
                Message  => "Scheduler Daemon is forced to start!",
            );
        }

        # get default log path from configuration
        my $LogPath = $CommonObject{ConfigObject}->Get('Scheduler::LogPath')
            || $CommonObject{ConfigObject}->Get('Home') . '/var/log';

        # backup old log files
        my $FileStdOut = $LogPath . '/SchedulerOUT.log';
        my $FileStdErr = $LogPath . '/SchedulerERR.log';
        use File::Copy;
        my $SystemTime = $CommonObject{TimeObject}->SystemTime();
        if ( -e $FileStdOut ) {
            move( "$FileStdOut", "$LogPath/SchedulerOUT-$SystemTime.log" );
        }
        if ( -e $FileStdErr ) {
            move( "$FileStdErr", "$LogPath/SchedulerERR-$SystemTime.log" );
        }

        # delete old log files
        my $DaysToKeep = $CommonObject{ConfigObject}->Get('Scheduler::Log::DaysToKeep') || 10;
        my $DaysToKeepSystemTime
            = $CommonObject{TimeObject}->SystemTime() - $DaysToKeep * 24 * 60 * 60;

        my @LogFiles = glob("$LogPath/*.log");

        LOGFILE:
        for my $LogFile (@LogFiles) {

            # skip if is not a backup file
            next LOGFILE if ( $LogFile !~ m{(?: .* /)* Scheduler (?: OUT|ERR ) - (\d+) \.log}igmx );

            # skip if is not older than the maximum allowed
            next LOGFILE if ( $1 > $DaysToKeepSystemTime );

            #delete file
            if ( unlink($LogFile) == 0 ) {

                # log old backup file cannot be deleted
                $CommonObject{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Scheduler could not delete old backup file $LogFile! $!",
                );

            }
            else {

                # log old backup file deleted
                $CommonObject{LogObject}->Log(
                    Priority => 'notice',
                    Message  => "Scheduler deleted old backup file $LogFile!",
                );
            }
        }

        # create a new daemon object
        my $Daemon = Proc::Daemon->new();

        # demonize itself
        $Daemon->Init(
            {
                child_STDOUT => $FileStdOut,
                child_STDERR => $FileStdErr,
            }
        );
    }

    # create common objects
    my %CommonObject = _CommonObjects();

    # re-create entire common object again:
    #
    # forked scheduler executing RegistrationUpdate tasks using PostgreSQL looses the connection
    #   to the server and this produces errors in SQL statements in different parts of the chain
    #   from Kernel/System/SystemData.pm (trying to list the registration variables) to
    #   Kernel/Scheduler.pm to bin/otrs.Scheduler.pl (trying to get the PID form the DB).
    #
    # The results are that the RegistrationUpdate task is not executed and the scheduler stops.
    #
    # Some error samples might include:
    #     DBD::Pg::st execute failed: server closed the connection unexpectedly
    #     DBD::Pg::st execute failed: lost synchronization with server: got message type "s"
    #     DBD::Pg::st execute failed: lost synchronization with server: got message type "e"
    #
    # It has been found that just creating the entire common object again either at this point
    #     or within the "main loop" works around the problem; re-creating just the DBObject does not
    #     work correctly.
    %CommonObject = _CommonObjects();

    # if start is forced, be sure to remove any PID from any host
    my $Force = $Param{Force} ? 1 : '';

    # create new PID on the Database
    $CommonObject{PIDObject}->PIDCreate(
        Name  => $PIDName,
        Force => $Force,
    );

    # get the process ID
    my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

    # set run directory for PID File
    my $Home    = $CommonObject{ConfigObject}->Get('Home');
    my $RunDir  = $Home . '/var/run';
    my $PIDFile = "$RunDir/scheduler.pid";

    # check if RunDir exists, otherwise create it
    if ( !-d "$RunDir" ) {
        my $Success = mkdir "$RunDir", 0755;

        # stop if can't create the PID file
        if ( !$Success ) {
            my $ExitCode = _AutoStop(
                Message   => "Could not create the directory $RunDir! Scheduler is stopping...!",
                DeletePID => 1,
            );
            return $ExitCode;
        }
    }

    # write PID to the PID file (if possible)
    my $PIDFH;
    if ( open $PIDFH, ">", $PIDFile ) {    ## no critic
        print $PIDFH $SchedulerPID{PID};
        close $PIDFH;
    }

    # otherwise stop if we can't write the PID on the PID file
    else {
        my $ExitCode = _AutoStop(
            Message   => "Can not write into the PID file:'$PIDFile'! $!",
            DeletePID => 1,
        );
        return $ExitCode;
    }

    # Log daemon start up
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "Scheduler Daemon start! PID $SchedulerPID{PID}",
    );

    my $Interrupt;
    my $Terminate;
    my $Hangup;

    # when we get a INT signal, set the exit flag
    local $SIG{INT} = sub { $Interrupt = 1 };

    # when we get a TERM signal, set the exit flag
    local $SIG{TERM} = sub { $Terminate = 1 };

    # when get a HUP signal, set HUP flag
    local $SIG{HUP} = sub { $Hangup = 1 };

    my $SleepTime = $CommonObject{ConfigObject}->Get('Scheduler::SleepTime') || 1;

    my $RestartAfterSeconds = $CommonObject{ConfigObject}->Get('Scheduler::RestartAfterSeconds')
        || ( 60 * 60 * 24 );    # default 1 day

    my $StartTime = $CommonObject{TimeObject}->SystemTime();

    # get config checksum
    my $InitConfigMD5 = $CommonObject{ConfigObject}->ConfigChecksum();

    # main loop
    while (1) {

        # get the process ID
        my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

        # check if process ID was deleted from DB
        if ( !%SchedulerPID ) {
            my $ExitCode = _AutoStop(
                Message => "Process could not be found in the process table!\n"
                    . "Scheduler is stopping...!\n",
            );
            return $ExitCode;
        }

        # check if Framework.xml file exists, otherwise quit because the otrs installation
        # might not be OK. for example UnitTest machines during change scenario process
        my $FrameworkConfigFile = $Home . '/Kernel/Config/Files/Framework.xml';
        if ( !-e $FrameworkConfigFile ) {
            my $ExitCode = _AutoStop(
                Message => "$FrameworkConfigFile file is part of the OTRS file set and "
                    . "is not present! \n"
                    . "Scheduler is stopping...!\n",
                DeletePID => 1,
            );
            return $ExitCode;
        }

        # get config checksum
        my $CurrConfigMD5 = $CommonObject{ConfigObject}->ConfigChecksum();

        # check if checksum changed and restart
        if ( $InitConfigMD5 ne $CurrConfigMD5 ) {

            my $ExitCode = _AutoRestart(
                Message => "Config.pm changed, unsafe to continue! \n"
                    . "Scheduler is restarting...!\n",
            );
            return $ExitCode;
        }

        # check for stop signal (again)
        if ( $Interrupt || $Terminate ) {
            my $ExitCode = _AutoStop(
                DeletePID => 1,
            );
            return $ExitCode;
        }

        # check for hangup signal, requesting a config reload
        if ($Hangup) {
            my $ExitCode = _AutoRestart(
                Message =>
                    "Reload requested, scheduler daemon restarts itself (PID $SchedulerPID{PID})."
            );
            return $ExitCode;
        }

        # Call Scheduler
        my $SchedulerObject = Kernel::Scheduler->new(%CommonObject);
        $SchedulerObject->Run();

        my $CurrentTime = $CommonObject{TimeObject}->SystemTime();

        # The Scheduler needs to be restarted from time to time because
        #   of memory leaks in some external perl modules.
        if ( ( $CurrentTime - $StartTime ) > $RestartAfterSeconds ) {
            my $ExitCode = _AutoRestart(
                Message => "Scheduler Daemon restarts itself (PID $SchedulerPID{PID})."
            );
            return $ExitCode;
        }

        # sleep to avoid overloading the processor
        sleep $SleepTime;
    }

    # this will never be reached because of the while (1)
    my $ExitCode = 1;
    return $ExitCode;
}

sub _Stop {
    my %Param = @_;

    # create common objects
    my %CommonObject = _CommonObjects();

    # get the process ID
    my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

    my $ExitCode = 0;

    # no process ID means that is not running
    if ( !%SchedulerPID ) {
        print "Can't stop OTRS Scheduler because is not running!\n";
        $ExitCode = 1;
        return $ExitCode;
    }

    # send interrupt signal to the process ID to stop it
    kill( 2, $SchedulerPID{PID} );

    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "Scheduler Daemon Stop! PID $SchedulerPID{PID}",
    );

    # force stop: remove PID from database, might be necessary if
    #   the process died but is still registered.
    if ( $Param{Force} ) {

        # delete process ID lock
        my $PIDDelSuccess = $CommonObject{PIDObject}->PIDDelete(
            Name  => $SchedulerPID{Name},
            Force => 1,
        );

        # log daemon stop
        if ( !$PIDDelSuccess ) {
            $CommonObject{LogObject}->Log(
                Priority => 'error',
                Message =>
                    "Process could not be deleted from process table! PID $SchedulerPID{PID}",
            );
            $ExitCode = 1;
            return $ExitCode;
        }

        # delete PID file
        my $Home    = $CommonObject{ConfigObject}->Get('Home');
        my $PIDFile = $Home . '/var/run/scheduler.pid';

        if ( unlink($PIDFile) == 0 ) {

            # log PID file cannot be deleted
            $CommonObject{LogObject}->Log(
                Priority => 'error',
                Message  => "Scheduler could not delete PID file:'$PIDFile'! $!",
            );
        }
    }

    return $ExitCode;
}

sub _Status {
    my %Param = @_;

    # create common objects
    my %CommonObject = _CommonObjects();

    # get the process ID
    my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

    # no process ID means that is not running
    if ( !%SchedulerPID ) {
        return 0;
    }

    # log daemon stop
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "Scheduler Daemon status request! PID $SchedulerPID{PID}",
    );

    # create a new Daemon object
    my $Daemon = Proc::Daemon->new();

    # Get the process status
    if ( $Daemon->Status( $SchedulerPID{PID} ) ) {

        # print the process ID
        return $SchedulerPID{PID};
    }

    # otherwise return -1, this means that the process is registed but it not running
    return -1;
}

sub _AutoRestart {
    my (%Param) = @_;

    # create common objects
    my %CommonObject = _CommonObjects();

    # get the process ID
    my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

    # Log daemon start-up
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message => $Param{Message} || 'Unknown reason to restart',
    );

    # delete process ID lock
    my $PIDDelSuccess = $CommonObject{PIDObject}->PIDDelete(
        Name  => $SchedulerPID{Name},
        Force => 1,
    );

    my $ExitCode;
    if ( !$PIDDelSuccess ) {
        $CommonObject{LogObject}->Log(
            Priority => 'error',
            Message =>
                "Could not remove Scheduler PID $SchedulerPID{PID} from database to prepare Scheduler restart, exiting.",
        );
        $ExitCode = 1;
        return $ExitCode;
    }

    my $Home      = $CommonObject{ConfigObject}->Get('Home');
    my $Scheduler = $Home . '/bin/otrs.Scheduler.pl';

    my $StartExitCode = system("$Scheduler -a start");

    if ($StartExitCode) {
        $CommonObject{LogObject}->Log(
            Priority => 'error',
            Message  => "Could not start-up new Scheduler instance.",
        );

        $ExitCode = 1;
        return $ExitCode;
    }

    $ExitCode = 0;
    return $ExitCode;
}

sub _AutoStop {
    my (%Param) = @_;

    # create common objects
    my %CommonObject = _CommonObjects();

    if ( $Param{Message} ) {

        # log error
        $CommonObject{LogObject}->Log(
            Priority => 'error',
            Message  => $Param{Message},
        );
    }

    my $ExitCode;
    if ( $Param{DeletePID} ) {

        # get the process ID
        my %SchedulerPID = $CommonObject{PIDObject}->PIDGet( Name => $PIDName );

        # delete process ID lock
        # scheduler should not delete PIDs from other hots at this point
        my $PIDDelSuccess = $CommonObject{PIDObject}->PIDDelete( Name => $SchedulerPID{Name} );

        # log daemon stop
        if ( !$PIDDelSuccess ) {
            $CommonObject{LogObject}->Log(
                Priority => 'error',
                Message =>
                    "Process could not be deleted from process table! PID $SchedulerPID{PID}",
            );
            $ExitCode = 1;
            return $ExitCode;
        }

        #delete PID file
        my $Home    = $CommonObject{ConfigObject}->Get('Home');
        my $PIDFile = $Home . '/var/run/scheduler.pid';

        # check if the PID file exists
        # on some linux ditributions if the init.d script is called with the method "restart"
        # the PID file is deleted (e.g start-stop-daemon based init scripts)
        if ( -e $PIDFile ) {

            # if the PID file exists check if is possible to delete or send an error
            if ( unlink($PIDFile) == 0 ) {

                # log PID file cannot be deleted
                $CommonObject{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Scheduler could not delete PID file:'$PIDFile'! $!",
                );
                $ExitCode = 1;
                return $ExitCode;
            }
        }
        $ExitCode = 0;
        return $ExitCode;
    }
    $ExitCode = 1;
    return $ExitCode;
}

sub _WatchDog {
    my %Param = @_;

    # create common object
    my %CommonObject;
    $CommonObject{ConfigObject} = Kernel::Config->new();
    $CommonObject{EncodeObject} = Kernel::System::Encode->new(%CommonObject);
    $CommonObject{LogObject}    = Kernel::System::Log->new(
        LogPrefix => 'OTRS-otrs.Scheduler-Watchdog',
        %CommonObject,
    );
    $CommonObject{MainObject} = Kernel::System::Main->new(%CommonObject);
    $CommonObject{TimeObject} = Kernel::System::Time->new(%CommonObject);
    $CommonObject{DBObject}   = Kernel::System::DB->new(
        %CommonObject,
        AutoConnectNo => 1,
    );

    my $ExitCode = 0;

    # check if OTRS can connect to the DB
    if ( !$CommonObject{DBObject}->Connect() ) {
        $CommonObject{LogObject}->Log(
            Priority => 'notice',
            Message  => "Database is not ready!",
        );
        return $ExitCode;
    }

    my $ProcessID = _Status();

    if ( !$ProcessID ) {
        $ExitCode = _Start();
    }
    elsif ( $ProcessID == -1 ) {
        _Stop( Force => 1 );

        my $ProcessID = _Status();
        if ( !$ProcessID ) {
            $ExitCode = _Start();
        }
        else {
            $CommonObject{LogObject}->Log(
                Priority => 'error',
                Message =>
                    'Scheduler was forced to stop but it is still registered, can not continue',
            );
            $ExitCode = 1;
        }
    }

 # if there is a $ProcessID and it is not -1 then it means that the scheduler is running, nothing to
 #   do here
    return $ExitCode;
}
