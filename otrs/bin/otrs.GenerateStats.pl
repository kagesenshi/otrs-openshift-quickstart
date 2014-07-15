#!/usr/bin/perl
# --
# bin/otrs.GenerateStats.pl - send stats output via email
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

use Getopt::Long;

use Kernel::Config;
use Kernel::System::Encode;
use Kernel::System::Time;
use Kernel::System::Main;
use Kernel::System::DB;
use Kernel::System::Log;
use Kernel::System::Email;
use Kernel::System::CheckItem;
use Kernel::System::Stats;
use Kernel::System::Group;
use Kernel::System::User;
use Kernel::System::CSV;
use Kernel::System::PDF;
use Kernel::Language;

# create common objects
my %CommonObject = ();
$CommonObject{UserID}       = 1;
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{EncodeObject} = Kernel::System::Encode->new(%CommonObject);
$CommonObject{LogObject}    = Kernel::System::Log->new(
    LogPrefix => 'OTRS-otrs.GenerateStats.pl',
    %CommonObject,
);
$CommonObject{CSVObject}       = Kernel::System::CSV->new(%CommonObject);
$CommonObject{TimeObject}      = Kernel::System::Time->new(%CommonObject);
$CommonObject{MainObject}      = Kernel::System::Main->new(%CommonObject);
$CommonObject{DBObject}        = Kernel::System::DB->new(%CommonObject);
$CommonObject{GroupObject}     = Kernel::System::Group->new(%CommonObject);
$CommonObject{UserObject}      = Kernel::System::User->new(%CommonObject);
$CommonObject{StatsObject}     = Kernel::System::Stats->new(%CommonObject);
$CommonObject{CheckItemObject} = Kernel::System::CheckItem->new(%CommonObject);
$CommonObject{EmailObject}     = Kernel::System::Email->new(%CommonObject);
$CommonObject{PDFObject}       = Kernel::System::PDF->new(%CommonObject);

# get options
Getopt::Long::Configure('no_ignore_case');
my %Opts = ();
GetOptions(
    'number|n=n'     => \$Opts{n},
    'param|p=s'      => \$Opts{p},
    'outputdir|o=s'  => \$Opts{o},
    'recipient|r=s@' => \$Opts{r},
    'sender|s=s'     => \$Opts{s},
    'message|m=s'    => \$Opts{m},
    'language|l=s'   => \$Opts{l},
    'format|f=s'     => \$Opts{f},
    'separator|S=s'  => \$Opts{S},
    'reportname|R'   => \$Opts{R},
    'filename|F=s'   => \$Opts{F},
    'help|h'         => \$Opts{h},
);

if ( $Opts{h} || !$Opts{n} ) {
    print "otrs.GenerateStats.pl - OTRS cmd stats\n";
    print "Copyright (C) 2001-2014 OTRS AG, http://otrs.com/\n";
    print
        "usage: otrs.GenerateStats.pl -n <StatNumber> [-p <PARAM_STRING>] [-o <DIRECTORY>] [-r <RECIPIENT> -r ... -s <SENDER>] [-m <MESSAGE>] [-l <LANGUAGE>] [-f CSV|Print] [-S <SEPARATOR>] [-F <FILENAME> [-R]\n";
    print
        "       <PARAM_STRING> e. g. 'Year=1977&Month=10' (only for static files)\n";
    print "       <DIRECTORY> /output/dir/\n";
    exit 1;
}

# required output param check
if ( !$Opts{o} && !$Opts{r} ) {
    print STDERR
        "ERROR: Need -o /tmp/ OR -r email\@example.com [-m 'some message']\n";
    exit 1;
}

# stats module check
if ( !$Opts{n} ) {
    print STDERR "ERROR: Need -n StatNumber\n";
    exit 1;
}

# fill up body
if ( !$Opts{m} && $Opts{p} ) {
    $Opts{m} .= "Stats with following options:\n\n";
    $Opts{m} .= "StatNumber: $Opts{n}\n";
    my @P = split( /&/, $Opts{p} );
    for (@P) {
        my ( $Key, $Value ) = split( /=/, $_, 2 );
        $Opts{m} .= "$Key: $Value\n";
    }
}

# only necessary for emails
if ( !$Opts{m} && $Opts{r} ) {
    print STDERR "ERROR: Need -m 'some message (necessary for emails)'\n";
    exit 1;
}

# language
my $Lang = $CommonObject{ConfigObject}->Get('DefaultLanguage') || 'en';
if ( $Opts{l} ) {
    $Lang = $Opts{l};
}
$CommonObject{LanguageObject} = Kernel::Language->new(
    UserLanguage => $Lang,
    LogObject    => $CommonObject{LogObject},
    ConfigObject => $CommonObject{ConfigObject},
    EncodeObject => $CommonObject{EncodeObject},
    MainObject   => $CommonObject{MainObject},
);

# format
my $Format = ( defined $Opts{f} && $Opts{f} eq 'Print' ) ? 'Print' : 'CSV';

# separator (for CSV files)
# for backwards compatibility no comma as default
my $Separator = $Opts{S} || ';';

# sender, if given
if ( !$Opts{s} ) {
    $Opts{s} = '';
}

# directory check
if ( $Opts{o} && !-e $Opts{o} ) {
    print STDERR "ERROR: No such directory: $Opts{o}\n";
    exit 1;
}

# process the information
my $StatNumber = $Opts{n};
my $StatID =
    $CommonObject{StatsObject}->StatNumber2StatID( StatNumber => $StatNumber );
if ( !$StatID ) {
    print STDERR "ERROR: No StatNumber: $Opts{n}\n";
    exit 1;
}

my ( $s, $m, $h, $D, $M, $Y ) =
    $CommonObject{TimeObject}->SystemTime2Date(
    SystemTime => $CommonObject{TimeObject}->SystemTime(),
    );

my %GetParam = ();
my $Stat = $CommonObject{StatsObject}->StatsGet( StatID => $StatID );

if ( $Stat->{StatType} eq 'static' ) {
    $GetParam{Year}  = $Y;
    $GetParam{Month} = $M;
    $GetParam{Day}   = $D;

    # get params from -p
    # only for static files
    my $Params = $CommonObject{StatsObject}->GetParams( StatID => $StatID );
    for my $ParamItem ( @{$Params} ) {
        if ( !$ParamItem->{Multiple} ) {
            my $Value = GetParam( Param => $ParamItem->{Name}, );
            if ( defined $Value ) {
                $GetParam{ $ParamItem->{Name} } =
                    GetParam( Param => $ParamItem->{Name}, );
            }
            elsif ( defined $ParamItem->{SelectedID} ) {
                $GetParam{ $ParamItem->{Name} } = $ParamItem->{SelectedID};
            }
        }
        else {
            my @Value = GetArray( Param => $ParamItem->{Name}, );
            if (@Value) {
                $GetParam{ $ParamItem->{Name} } = \@Value;
            }
            elsif ( defined $ParamItem->{SelectedID} ) {
                $GetParam{ $ParamItem->{Name} } = [ $ParamItem->{SelectedID} ];
            }
        }
    }
}
elsif ( $Stat->{StatType} eq 'dynamic' ) {
    %GetParam = %{$Stat};
}

# run stat...
my @StatArray = @{
    $CommonObject{StatsObject}->StatsRun(
        StatID   => $StatID,
        GetParam => \%GetParam,
        )
};

# generate output
my $TitleArrayRef  = shift(@StatArray);
my $Title          = $TitleArrayRef->[0];
my $HeadArrayRef   = shift(@StatArray);
my $CountStatArray = @StatArray;
my $Time           = sprintf( "%04d-%02d-%02d %02d:%02d:%02d", $Y, $M, $D, $h, $m, $s );
if ( !@StatArray ) {
    push( @StatArray, [ ' ', 0 ] );
}
my %Attachment;

if ( $Format eq 'Print' && $CommonObject{PDFObject} ) {

    # Create the PDF
    my %User =
        $CommonObject{UserObject}->GetUserData( UserID => $CommonObject{UserID} );

    my $PrintedBy  = $CommonObject{LanguageObject}->Get('printed by');
    my $Page       = $CommonObject{LanguageObject}->Get('Page');
    my $SystemTime = $CommonObject{TimeObject}->SystemTime();
    my $TimeStamp =
        $CommonObject{TimeObject}->SystemTime2TimeStamp(
        SystemTime => $SystemTime,
        );
    my $Time =
        $CommonObject{LanguageObject}->FormatTimeString(
        $TimeStamp, 'DateFormat'
        );

    # create the content array
    my $CellData;
    my $CounterRow  = 0;
    my $CounterHead = 0;
    for my $Content ( @{$HeadArrayRef} ) {
        $CellData->[$CounterRow]->[$CounterHead]->{Content} = $Content;
        $CellData->[$CounterRow]->[$CounterHead]->{Font}    = 'ProportionalBold';
        $CounterHead++;
    }
    if ( $CounterHead > 0 ) {
        $CounterRow++;
    }
    for my $Row (@StatArray) {
        my $CounterColumn = 0;
        for my $Content ( @{$Row} ) {
            $CellData->[$CounterRow]->[$CounterColumn]->{Content} = $Content;
            $CounterColumn++;
        }
        $CounterRow++;
    }
    if ( !$CellData->[0]->[0] ) {
        $CellData->[0]->[0]->{Content} =
            $CommonObject{LanguageObject}->Get('No Result!');
    }

    # page params
    my %PageParam;
    $PageParam{PageOrientation} = 'landscape';
    $PageParam{MarginTop}       = 30;
    $PageParam{MarginRight}     = 40;
    $PageParam{MarginBottom}    = 40;
    $PageParam{MarginLeft}      = 40;
    $PageParam{HeaderRight} =
        $CommonObject{ConfigObject}->Get('Stats::StatsHook')
        . $Stat->{StatNumber};
    $PageParam{FooterLeft}   = 'otrs.GenerateStats.pl';
    $PageParam{HeadlineLeft} = $Title;
    $PageParam{HeadlineRight} =
        $PrintedBy . ' '
        . $User{UserFirstname} . ' '
        . $User{UserLastname} . ' ('
        . $User{UserEmail} . ') '
        . $Time;

    # table params
    my %TableParam;
    $TableParam{CellData}            = $CellData;
    $TableParam{Type}                = 'Cut';
    $TableParam{FontSize}            = 6;
    $TableParam{Border}              = 0;
    $TableParam{BackgroundColorEven} = '#AAAAAA';
    $TableParam{BackgroundColorOdd}  = '#DDDDDD';
    $TableParam{Padding}             = 1;
    $TableParam{PaddingTop}          = 3;
    $TableParam{PaddingBottom}       = 3;

    # get maximum number of pages
    my $MaxPages = $CommonObject{ConfigObject}->Get('PDF::MaxPages');
    if ( !$MaxPages || $MaxPages < 1 || $MaxPages > 1000 ) {
        $MaxPages = 100;
    }

    # create new pdf document
    $CommonObject{PDFObject}->DocumentNew(
        Title  => $CommonObject{ConfigObject}->Get('Product') . ': ' . $Title,
        Encode => 'utf-8',
    );

    # start table output
    my $Loop    = 1;
    my $Counter = 1;
    while ($Loop) {

        # if first page
        if ( $Counter == 1 ) {
            $CommonObject{PDFObject}->PageNew(
                %PageParam, FooterRight => $Page . ' ' . $Counter,
            );
        }

        # output table (or a fragment of it)
        %TableParam = $CommonObject{PDFObject}->Table( %TableParam, );

        # stop output or another page
        if ( $TableParam{State} ) {
            $Loop = 0;
        }
        else {
            $CommonObject{PDFObject}->PageNew(
                %PageParam,
                FooterRight => $Page . ' ' . ( $Counter + 1 ),
            );
        }
        $Counter++;

        # check max pages
        if ( $Counter >= $MaxPages ) {
            $Loop = 0;
        }
    }

    # return the document
    my $PDFString = $CommonObject{PDFObject}->DocumentOutput();

    # save the pdf with the title and timestamp as filename, or read it from param
    my $Filename;
    if ( $Opts{F} ) {
        $Filename = $Opts{F};
    }
    else {
        $Filename = $CommonObject{StatsObject}->StringAndTimestamp2Filename(
            String => $Stat->{Title} . " Created",
        );
    }
    %Attachment = (
        Filename    => $Filename . ".pdf",
        ContentType => "application/pdf",
        Content     => $PDFString,
        Encoding    => "base64",
        Disposition => "attachment",
    );
}
else {

    # Create the CSV data
    my $Output;
    warn "creating data";

    # Only add the name if parameter is set
    if ( $Opts{R} ) {
        $Output .= "Name: $Title; Created: $Time\n";
    }
    $Output .= $CommonObject{CSVObject}->Array2CSV(
        Head      => $HeadArrayRef,
        Data      => \@StatArray,
        Separator => $Separator,
    );

    # save the csv with the title and timestamp as filename, or read it from param
    my $Filename;
    if ( $Opts{F} ) {
        $Filename = $Opts{F};
    }
    else {
        $Filename = $CommonObject{StatsObject}->StringAndTimestamp2Filename(
            String => $Stat->{Title} . " Created",
        );
    }

    %Attachment = (
        Filename    => $Filename . ".csv",
        ContentType => "text/csv",
        Content     => $Output,
        Encoding    => "base64",
        Disposition => "attachment",
    );
}

# write output
if ( $Opts{o} ) {
    if ( open my $Filehandle, '>', "$Opts{o}/$Attachment{Filename}" ) {    ## no critic
        print $Filehandle $Attachment{Content};
        close $Filehandle;
        print "NOTICE: Writing file $Opts{o}/$Attachment{Filename}.\n";
        exit;
    }
    else {
        print STDERR "ERROR: Can't write $Opts{o}/$Attachment{Filename}: $!\n";
        exit 1;
    }
}

# send email

RECIPIENT:
for my $Recipient ( @{ $Opts{r} } ) {

    # recipient check
    if ( !$CommonObject{CheckItemObject}->CheckEmail( Address => $Recipient ) ) {
        print STDERR "Warning: email address $Recipient invalid, skipping address."
            . $CommonObject{CheckItemObject}->CheckError() . "\n";
        next RECIPIENT;
    }
    $CommonObject{EmailObject}->Send(
        From       => $Opts{s},
        To         => $Recipient,
        Subject    => "[Stats - $CountStatArray Records] $Title; Created: $Time",
        Body       => $CommonObject{LanguageObject}->Get( $Opts{m} ),
        Charset    => 'utf-8',
        Attachment => [ {%Attachment}, ],
    );
    print "NOTICE: Email sent to '$Recipient'.\n";

}
exit(0);

sub GetParam {
    my (%Param) = @_;

    if ( !$Param{Param} ) {
        print STDERR "ERROR: Need Param Arg in GetParam()\n";
    }
    my @P = split( /&/, $Opts{p} || '' );
    for (@P) {
        my ( $Key, $Value ) = split( /=/, $_, 2 );
        if ( $Key eq $Param{Param} ) {
            return $Value;
        }
    }
    return;
}

sub GetArray {
    my (%Param) = @_;

    if ( !$Param{Param} ) {
        print STDERR "ERROR: Need Param Arg in GetArray()\n";
    }
    my @P = split( /&/, $Opts{p} || '' );
    my @Array;
    for (@P) {
        my ( $Key, $Value ) = split( /=/, $_, 2 );
        if ( $Key eq $Param{Param} ) {
            push( @Array, $Value );
        }
    }
    return @Array;
}
