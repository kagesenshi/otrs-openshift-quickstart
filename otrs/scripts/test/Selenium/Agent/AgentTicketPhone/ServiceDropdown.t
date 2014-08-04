# --
# ServiceDropdown.t - frontend test AgentTicketPhone
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

use vars qw($Self);

use Kernel::System::UnitTest::Helper;
use Kernel::System::Service;
use Kernel::System::Ticket;
use Kernel::System::UnitTest::Selenium;
use Kernel::System::SysConfig;

# this test is to check that when AgentTicketPhone is loaded already with
# customer data on it (like when doing Split), the dropdown of Service is
# prefilled with the correct data. This is because of bug
# http://bugs.otrs.org/show_bug.cgi?id=7060

my $Selenium = Kernel::System::UnitTest::Selenium->new(
    Verbose        => 1,
    UnitTestObject => $Self,
);

$Selenium->RunTest(
    sub {

        my $Helper = Kernel::System::UnitTest::Helper->new(
            UnitTestObject => $Self,
            %{$Self},
            RestoreSystemConfiguration => 1,
        );

        my $SysConfigObject = Kernel::System::SysConfig->new(
            %{$Self},
        );

        # update sysconfig settings
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Service',
            Value => 1,
        );

        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => ['users'],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $Self->{ConfigObject}->Get('ScriptAlias');

        # create a customer and a ticket from that customer as previous
        # steps to do the selenium testing

        # create local objects
        my $ConfigObject = Kernel::Config->new();

        # do not checkmx
        $ConfigObject->Set(
            Key   => 'CheckEmailAddresses',
            Value => 0,
        );

        my $ServiceObject = Kernel::System::Service->new(
            %{$Self},
            ConfigObject => $ConfigObject,
        );
        my $TicketObject = Kernel::System::Ticket->new(
            %{$Self},
            ConfigObject => $ConfigObject,
        );

        # create a test customer
        my $TestUserCustomer = $Helper->TestCustomerUserCreate()
            || die "Did not get test customer user";

        # create a ticket from the just created customer
        my $TicketID = $TicketObject->TicketCreate(
            Title        => 'Selenium Test-Some Ticket Title',
            Queue        => 'Raw',
            Lock         => 'unlock',
            Priority     => '3 normal',
            State        => 'closed successful',
            CustomerUser => $TestUserCustomer,
            OwnerID      => 1,
            UserID       => 1,
        );

        my $RandomID = $Helper->GetRandomID();

        # create a test service
        my $ServiceID = $ServiceObject->ServiceAdd(
            Name    => 'SeleniumTestService' . $RandomID,
            Comment => 'Selenium Test Service',
            ValidID => 1,
            UserID  => 1,
        );

        # allow access to the just created service to the test user
        $ServiceObject->CustomerUserServiceMemberAdd(
            CustomerUserLogin => $TestUserCustomer,
            ServiceID         => $ServiceID,
            Active            => 1,
            UserID            => 1,
        );

        # create an article for the test ticket
        my $ArticleID = $TicketObject->ArticleCreate(
            TicketID       => $TicketID,
            ArticleType    => 'note-internal',
            SenderType     => 'agent',
            Subject        => 'Selenium test',
            Body           => 'Just a test body for selenium testing',
            Charset        => 'ISO-8859-15',
            MimeType       => 'text/plain',
            HistoryType    => 'AddNote',
            HistoryComment => 'Selenium testing',
            UserID         => 1,
        );

        # real selenium test start
        # open the page that clicking on Split link of the zoom view of the
        # just created ticket would open
        $Selenium->get(
            "${ScriptAlias}index.pl?Action=AgentTicketPhone;TicketID=$TicketID;ArticleID=$ArticleID"
        );

        # verify that the services dropdown has the just created service
        $Selenium->find_element( "select#ServiceID option[value='$ServiceID']", 'css' );

        # set the test service to invalid
        $ServiceObject->ServiceUpdate(
            ServiceID => $ServiceID,
            Name      => 'SeleniumTestService' . $RandomID,
            ValidID   => 2,
            UserID    => 1,
        );

        # delete the test ticket
        $TicketObject->TicketDelete(
            TicketID => $TicketID,
            UserID   => 1,
        );

        }
);

1;
