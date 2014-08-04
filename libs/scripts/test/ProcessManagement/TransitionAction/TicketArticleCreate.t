# --
# TicketArticleCreate.t - TicketArticleCreate testscript
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;
use vars qw($Self);

use Kernel::Config;
use Kernel::System::UnitTest::Helper;
use Kernel::System::Ticket;
use Kernel::System::ProcessManagement::TransitionAction::TicketArticleCreate;

use Kernel::System::VariableCheck qw(:all);

# create local objects
my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %{$Self},
    UnitTestObject             => $Self,
    RestoreSystemConfiguration => 0,
);

my $ConfigObject = Kernel::Config->new();
my $TicketObject = Kernel::System::Ticket->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
my $ModuleObject = Kernel::System::ProcessManagement::TransitionAction::TicketArticleCreate->new(
    %{$Self},
    ConfigObject => $ConfigObject,
    TicketObject => $TicketObject,
);

# define variables
my $UserID     = 1;
my $ModuleName = 'TicketArticleCreate';

# ----------------------------------------
# Create a test ticket
# ----------------------------------------
my $TicketID = $TicketObject->TicketCreate(
    TN            => undef,
    Title         => 'test',
    QueueID       => 1,
    Lock          => 'unlock',
    Priority      => '3 normal',
    StateID       => 1,
    TypeID        => 1,
    Service       => undef,
    SLA           => undef,
    CustomerID    => undef,
    CustomerUser  => undef,
    OwnerID       => 1,
    ResponsibleID => 1,
    ArchiveFlag   => undef,
    UserID        => $UserID,
);

# sanity checks
$Self->True(
    $TicketID,
    "TicketCreate() - $TicketID",
);

my %Ticket = $TicketObject->TicketGet(
    TicketID => $TicketID,
    UserID   => $UserID,
);
$Self->True(
    IsHashRefWithData( \%Ticket ),
    "TicketGet() - Get Ticket with ID $TicketID.",
);

# ----------------------------------------

# Run() tests
my @Tests = (
    {
        Name    => 'No Params',
        Config  => undef,
        Success => 0,
    },
    {
        Name   => 'No UserID',
        Config => {
            UserID => undef,
            Ticket => \%Ticket,
            Config => {
                ArticleType    => 'note-internal',
                SenderType     => 'agent',
                ContentType    => 'text/plain; charset=ISO-8859-15',
                Subject        => 'some short description',
                Body           => 'the message text',
                HistoryType    => 'OwnerUpdate',
                HistoryComment => 'Some free text!',
                From           => 'Some Agent <email@example.com>',
                To             => 'Some Customer A <customer-a@example.com>',
                Cc             => 'Some Customer B <customer-b@example.com>',
                ReplyTo        => 'Some Customer B <customer-b@example.com>',
                MessageID      => '<asdasdasd.123@example.com>',
                InReplyTo      => '<asdasdasd.12@example.com>',
                References =>
                    '<asdasdasd.1@example.com> <asdasdasd.12@example.com>',
                NoAgentNotify             => 0,
                AutoResponseType          => 'auto reply',
                ForceNotificationToUserID => [ 1, 43, 56, ],
                ExcludeNotificationToUserID     => [ 43, 56, ],
                ExcludeMuteNotificationToUserID => [ 43, 56, ],
            },
        },
        Success => 0,
    },
    {
        Name   => 'No Ticket',
        Config => {
            UserID => $UserID,
            Ticket => undef,
            Config => {
                ArticleType    => 'note-internal',
                SenderType     => 'agent',
                ContentType    => 'text/plain; charset=ISO-8859-15',
                Subject        => 'some short description',
                Body           => 'the message text',
                HistoryType    => 'OwnerUpdate',
                HistoryComment => 'Some free text!',
                From           => 'Some Agent <email@example.com>',
                To             => 'Some Customer A <customer-a@example.com>',
                Cc             => 'Some Customer B <customer-b@example.com>',
                ReplyTo        => 'Some Customer B <customer-b@example.com>',
                MessageID      => '<asdasdasd.123@example.com>',
                InReplyTo      => '<asdasdasd.12@example.com>',
                References =>
                    '<asdasdasd.1@example.com> <asdasdasd.12@example.com>',
                NoAgentNotify             => 0,
                AutoResponseType          => 'auto reply',
                ForceNotificationToUserID => [ 1, 43, 56, ],
                ExcludeNotificationToUserID     => [ 43, 56, ],
                ExcludeMuteNotificationToUserID => [ 43, 56, ],
            },
        },
        Success => 0,
    },
    {
        Name   => 'No Config',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {},
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Config',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                NoAgentNotify => 0,
            },
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Ticket Format',
        Config => {
            UserID => $UserID,
            Ticket => 1,
            Config => {
                NoAgentNotify => 0,
            },
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Config Format',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => 1,
        },
        Success => 0,
    },
    {
        Name   => 'Correct ASCII',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                ArticleType    => 'note-internal',
                SenderType     => 'agent',
                ContentType    => 'text/plain; charset=ISO-8859-15',
                Subject        => 'some short description',
                Body           => 'the message text',
                HistoryType    => 'OwnerUpdate',
                HistoryComment => 'Some free text!',
                From           => 'Some Agent <email@example.com>',
                To             => 'Some Customer A <customer-a@example.com>',
                Cc             => 'Some Customer B <customer-b@example.com>',
                ReplyTo        => 'Some Customer B <customer-b@example.com>',
                MessageID      => '<asdasdasd.123@example.com>',
                InReplyTo      => '<asdasdasd.12@example.com>',
                References =>
                    '<asdasdasd.1@example.com> <asdasdasd.12@example.com>',
                NoAgentNotify => 0,
                ForceNotificationToUserID => [ 1, 43, 56, ],
                ExcludeNotificationToUserID     => [ 43, 56, ],
                ExcludeMuteNotificationToUserID => [ 43, 56, ],
            },
        },
        Success => 1,
    },
    {
        Name   => 'Correct UTF8',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                ArticleType => 'note-internal',
                SenderType  => 'agent',
                ContentType => 'text/plain; charset=ISO-8859-15',
                Subject =>
                    'äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ-カスタ-用迎使用-Язык',
                Body =>
                    'äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ-カスタ-用迎使用-Язык',
                HistoryType    => 'OwnerUpdate',
                HistoryComment => 'Some free text!',
                From           => 'Some Agent <email@example.com>',
                To             => 'Some Customer A <customer-a@example.com>',
                Cc             => 'Some Customer B <customer-b@example.com>',
                ReplyTo        => 'Some Customer B <customer-b@example.com>',
                MessageID      => '<asdasdasd.123@example.com>',
                InReplyTo      => '<asdasdasd.12@example.com>',
                References =>
                    '<asdasdasd.1@example.com> <asdasdasd.12@example.com>',
                NoAgentNotify => 0,
                ForceNotificationToUserID => [ 1, 43, 56, ],
                ExcludeNotificationToUserID     => [ 43, 56, ],
                ExcludeMuteNotificationToUserID => [ 43, 56, ],
            },
        },
        Success => 1,
    },

);

my %ExcludedArtributes = (
    HistoryType                     => 1,
    HistoryComment                  => 1,
    ExcludeNotificationToUserID     => 1,
    ForceNotificationToUserID       => 1,
    NoAgentNotify                   => 1,
    ExcludeMuteNotificationToUserID => 1,
    AutoResponseType                => 1,
);

for my $Test (@Tests) {
    my $Success = $ModuleObject->Run(
        %{ $Test->{Config} },
        ProcessEntityID          => 'P1',
        ActivityEntityID         => 'A1',
        TransitionEntityID       => 'T1',
        TransitionActionEntityID => 'TA1',
    );

    if ( $Test->{Success} ) {

        $Self->True(
            $Success,
            "$ModuleName Run() - Test:'$Test->{Name}' | excecuted with True"
        );

        # get last article
        my @ArticleIDs = $TicketObject->ArticleIndex(
            TicketID => $TicketID,
        );
        my %Article = $TicketObject->ArticleGet(
            ArticleID => $ArticleIDs[-1],
            UserID    => 1,
        );

        ATTRIBUTE:
        for my $Attribute ( sort keys %{ $Test->{Config}->{Config} } ) {

            next ATTRIBUTE if $ExcludedArtributes{$Attribute};

            $Self->True(
                $Article{$Attribute},
                "$ModuleName - Test:'$Test->{Name}' | Attribute: $Attribute for ArticleID:"
                    . " $Article{ArticleID} exists with True",
            );

            $Self->Is(
                $Article{$Attribute},
                $Test->{Config}->{Config}->{$Attribute},
                "$ModuleName - Test:'$Test->{Name}' | Attribute: $Attribute for ArticleID:"
                    . " $Article{ArticleID} match expected value",
            );
        }
    }
    else {
        $Self->False(
            $Success,
            "$ModuleName Run() - Test:'$Test->{Name}' | excecuted with False"
        );
    }
}

#-----------------------------------------
# Destructors to remove our Testitems
# ----------------------------------------

# Ticket
my $Delete = $TicketObject->TicketDelete(
    TicketID => $TicketID,
    UserID   => 1,
);
$Self->True(
    $Delete,
    "TicketDelete() - $TicketID",
);

# ----------------------------------------

1;
