# --
# TicketGet.t - TicketConnector interface tests for TicketConnector backend
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;
use vars (qw($Self));

use MIME::Base64;
use Kernel::GenericInterface::Debugger;
use Kernel::GenericInterface::Operation::Session::SessionCreate;
use Kernel::GenericInterface::Operation::Ticket::TicketGet;
use Kernel::GenericInterface::Requester;
use Kernel::System::DynamicField;
use Kernel::System::DynamicField::Backend;
use Kernel::System::GenericInterface::Webservice;
use Kernel::System::UnitTest::Helper;
use Kernel::System::User;
use Kernel::System::Ticket;
use Kernel::System::VariableCheck qw(:all);

#get a random id
my $RandomID = int rand 1_000_000_000;

# create local config object
my $ConfigObject = Kernel::Config->new();

# helper object
# skip SSL certificate verification
my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %{$Self},
    UnitTestObject             => $Self,
    RestoreSystemConfiguration => 1,
    SkipSSLVerify              => 1,
);

# new user object
my $UserObject = Kernel::System::User->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

# create a new user for current test
my $UserLogin = $HelperObject->TestUserCreate();
my $Password  = $UserLogin;

$Self->{UserID} = $UserObject->UserLookup(
    UserLogin => $UserLogin,
);

my %SkipFields = (
    Age                       => 1,
    AgeTimeUnix               => 1,
    UntilTime                 => 1,
    SolutionTime              => 1,
    SolutionTimeWorkingTime   => 1,
    EscalationTime            => 1,
    EscalationDestinationIn   => 1,
    EscalationTimeWorkingTime => 1,
    UpdateTime                => 1,
    UpdateTimeWorkingTime     => 1,
);

# start DynamicFields

my $DynamicFieldObject = Kernel::System::DynamicField->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

# create backend object and delegates
my $BackendObject = Kernel::System::DynamicField::Backend->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
$Self->Is(
    ref $BackendObject,
    'Kernel::System::DynamicField::Backend',
    'Backend object was created successfuly',
);

my @TestDynamicFields;

# create a dynamic field
my $FieldID1 = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "DFT1$RandomID",
    Label      => 'Description',
    FieldOrder => 9991,
    FieldType  => 'Text',
    ObjectType => 'Ticket',
    Config     => {
        DefaultValue => 'Default',
    },
    ValidID => 1,
    UserID  => 1,
    Reorder => 0,
);

push @TestDynamicFields, $FieldID1;

my $Field1Config = $DynamicFieldObject->DynamicFieldGet(
    ID => $FieldID1,
);

# create a dynamic field
my $FieldID2 = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "DFT2$RandomID",
    Label      => 'Description',
    FieldOrder => 9992,
    FieldType  => 'Dropdown',
    ObjectType => 'Ticket',
    Config     => {
        DefaultValue   => 'Default',
        PossibleValues => {
            ticket1_field2 => 'ticket1_field2',
            ticket2_field2 => 'ticket2_field2',
        },
    },
    ValidID => 1,
    UserID  => 1,
    Reorder => 0,
);

my $Field2Config = $DynamicFieldObject->DynamicFieldGet(
    ID => $FieldID2,
);

push @TestDynamicFields, $FieldID2;

# create a dynamic field
my $FieldID3 = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "DFT3$RandomID",
    Label      => 'Description',
    FieldOrder => 9993,
    FieldType  => 'DateTime',        # mandatory, selects the DF backend to use for this field
    ObjectType => 'Ticket',
    Config     => {
        DefaultValue => 'Default',
    },
    ValidID => 1,
    UserID  => 1,
    Reorder => 0,
);

my $Field3Config = $DynamicFieldObject->DynamicFieldGet(
    ID => $FieldID3,
);

push @TestDynamicFields, $FieldID3;

# create a dynamic field
my $FieldID4 = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "DFT4$RandomID",
    Label      => 'Description',
    FieldOrder => 9993,
    FieldType  => 'Checkbox',        # mandatory, selects the DF backend to use for this field
    ObjectType => 'Ticket',
    Config     => {
        DefaultValue => 'Default',
    },
    ValidID => 1,
    UserID  => 1,
    Reorder => 0,
);

my $Field4Config = $DynamicFieldObject->DynamicFieldGet(
    ID => $FieldID4,
);

push @TestDynamicFields, $FieldID4;

# create a dynamic field
my $FieldID5 = $DynamicFieldObject->DynamicFieldAdd(
    Name       => "DFT5$RandomID",
    Label      => 'Description',
    FieldOrder => 9995,
    FieldType  => 'Multiselect',     # mandatory, selects the DF backend to use for this field
    ObjectType => 'Ticket',
    Config     => {
        DefaultValue => [ 'ticket2_field5', 'ticket4_field5' ],
        PossibleValues => {
            ticket1_field5 => 'ticket1_field51',
            ticket2_field5 => 'ticket2_field52',
            ticket3_field5 => 'ticket2_field53',
            ticket4_field5 => 'ticket2_field54',
            ticket5_field5 => 'ticket2_field55',
        },
    },
    ValidID => 1,
    UserID  => 1,
    Reorder => 0,
);

my $Field5Config = $DynamicFieldObject->DynamicFieldGet(
    ID => $FieldID5,
);

push @TestDynamicFields, $FieldID5;

# finish DynamicFields

# create ticket object
my $TicketObject = Kernel::System::Ticket->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

# create 3 tickets

#ticket id container
my @TicketIDs;

# create ticket 1
my $TicketID1 = $TicketObject->TicketCreate(
    Title        => 'Ticket One Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '123465',
    CustomerUser => 'customerOne@example.com',
    OwnerID      => 1,
    UserID       => 1,
);

# sanity check
$Self->True(
    $TicketID1,
    "TicketCreate() successful for Ticket One ID $TicketID1",
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field1Config,
    ObjectID           => $TicketID1,
    Value              => 'ticket1_field1',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field2Config,
    ObjectID           => $TicketID1,
    Value              => 'ticket1_field2',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field3Config,
    ObjectID           => $TicketID1,
    Value              => '2001-01-01 01:01:01',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field4Config,
    ObjectID           => $TicketID1,
    Value              => '0',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field5Config,
    ObjectID           => $TicketID1,
    Value              => [ 'ticket1_field51', 'ticket1_field52', 'ticket1_field53' ],
    UserID             => 1,
);

# get the Ticket entry
# without dynamic fields
my %TicketEntryOne = $TicketObject->TicketGet(
    TicketID      => $TicketID1,
    DynamicFields => 0,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryOne ),
    "TicketGet() successful for Local TicketGet One ID $TicketID1",
);

for my $Key ( sort keys %TicketEntryOne ) {
    if ( !$TicketEntryOne{$Key} ) {
        $TicketEntryOne{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryOne{$Key};
    }
}

# get the Ticket entry
# with dynamic fields
my %TicketEntryOneDF = $TicketObject->TicketGet(
    TicketID      => $TicketID1,
    DynamicFields => 1,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryOneDF ),
    "TicketGet() successful with DF for Local TicketGet One ID $TicketID1",
);

for my $Key ( sort keys %TicketEntryOneDF ) {
    if ( !$TicketEntryOneDF{$Key} ) {
        $TicketEntryOneDF{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryOneDF{$Key};
    }
}

# add ticket id
push @TicketIDs, $TicketID1;

# create ticket 2
my $TicketID2 = $TicketObject->TicketCreate(
    Title        => 'Ticket Two Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '123465',
    CustomerUser => 'customerTwo@example.com',
    OwnerID      => 1,
    UserID       => 1,
);

# sanity check
$Self->True(
    $TicketID2,
    "TicketCreate() successful for Ticket Two ID $TicketID2",
);

# set dynamic field values
$BackendObject->ValueSet(
    DynamicFieldConfig => $Field1Config,
    ObjectID           => $TicketID2,
    Value              => 'ticket2_field1',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field2Config,
    ObjectID           => $TicketID2,
    Value              => 'ticket2_field2',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field3Config,
    ObjectID           => $TicketID2,
    Value              => '2011-11-11 11:11:11',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field4Config,
    ObjectID           => $TicketID2,
    Value              => '1',
    UserID             => 1,
);

$BackendObject->ValueSet(
    DynamicFieldConfig => $Field5Config,
    ObjectID           => $TicketID2,
    Value              => [
        'ticket1_field5',
        'ticket2_field5',
        'ticket4_field5',
    ],
    UserID => 1,
);

# get the Ticket entry
# withpout DF
my %TicketEntryTwo = $TicketObject->TicketGet(
    TicketID      => $TicketID2,
    DynamicFields => 0,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryTwo ),
    "TicketGet() successful for Local TicketGet Two ID $TicketID2",
);

for my $Key ( sort keys %TicketEntryTwo ) {
    if ( !$TicketEntryTwo{$Key} ) {
        $TicketEntryTwo{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryTwo{$Key};
    }
}

# get the Ticket entry
# with DF
my %TicketEntryTwoDF = $TicketObject->TicketGet(
    TicketID      => $TicketID2,
    DynamicFields => 1,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryTwoDF ),
    "TicketGet() successful for Local TicketGet Two ID $TicketID2",
);

for my $Key ( sort keys %TicketEntryTwoDF ) {
    if ( !$TicketEntryTwoDF{$Key} ) {
        $TicketEntryTwoDF{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryTwoDF{$Key};
    }
}

# add ticket id
push @TicketIDs, $TicketID2;

# create ticket 3
my $TicketID3 = $TicketObject->TicketCreate(
    Title        => 'Ticket Three Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '123465',
    CustomerUser => 'customerThree@example.com',
    OwnerID      => 1,
    UserID       => 1,
);

# sanity check
$Self->True(
    $TicketID3,
    "TicketCreate() successful for Ticket Three ID $TicketID3",
);

# get the Ticket entry
my %TicketEntryThree = $TicketObject->TicketGet(
    TicketID      => $TicketID3,
    DynamicFields => 0,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryThree ),
    "TicketGet() successful for Local TicketGet Three ID $TicketID3",
);

for my $Key ( sort keys %TicketEntryThree ) {
    if ( !$TicketEntryThree{$Key} ) {
        $TicketEntryThree{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryThree{$Key};
    }
}

# add ticket id
push @TicketIDs, $TicketID3;

# create ticket 3
my $TicketID4 = $TicketObject->TicketCreate(
    Title        => 'Ticket Four Title äöüßÄÖÜ€ис',
    Queue        => 'Junk',
    Lock         => 'lock',
    Priority     => '3 normal',
    State        => 'new',
    CustomerID   => '654321',
    CustomerUser => 'customerFour@example.com',
    OwnerID      => 1,
    UserID       => 1,
);

# sanity check
$Self->True(
    $TicketID4,
    "TicketCreate() successful for Ticket Four ID $TicketID4",
);

# first article
my $ArticleID41 = $TicketObject->ArticleCreate(
    TicketID       => $TicketID4,
    ArticleType    => 'phone',
    SenderType     => 'agent',
    From           => 'Agent Some Agent Some Agent <email@example.com>',
    To             => 'Customer A <customer-a@example.com>',
    Cc             => 'Customer B <customer-b@example.com>',
    ReplyTo        => 'Customer B <customer-b@example.com>',
    Subject        => 'first article',
    Body           => 'A text for the body, Title äöüßÄÖÜ€ис',
    ContentType    => 'text/plain; charset=ISO-8859-15',
    HistoryType    => 'OwnerUpdate',
    HistoryComment => 'first article',
    UserID         => 1,
    NoAgentNotify  => 1,
);

# second article
my $ArticleID42 = $TicketObject->ArticleCreate(
    TicketID    => $TicketID4,
    ArticleType => 'phone',
    SenderType  => 'agent',
    From        => 'Anot Real Agent <email@example.com>',
    To          => 'Customer A <customer-a@example.com>',
    Cc          => 'Customer B <customer-b@example.com>',
    ReplyTo     => 'Customer B <customer-b@example.com>',
    Subject     => 'second article',
    Body        => 'A text for the body, not too long',
    ContentType => 'text/plain; charset=ISO-8859-15',

    #    Attachment     => \@Attachments,
    HistoryType    => 'OwnerUpdate',
    HistoryComment => 'second article',
    UserID         => 1,
    NoAgentNotify  => 1,
);

# save articles without attachments
my @ArticleWithoutAttachments = $TicketObject->ArticleGet(
    TicketID => $TicketID4,
    UserID   => 1,
);

for my $Article (@ArticleWithoutAttachments) {

    for my $Key ( sort keys %{$Article} ) {
        if ( !$Article->{$Key} ) {
            $Article->{$Key} = '';
        }
        if ( $SkipFields{$Key} ) {
            delete $Article->{$Key};
        }
    }
}

# file checks
for my $File (qw(xls txt doc png pdf)) {
    my $Location = $Self->{ConfigObject}->Get('Home')
        . "/scripts/test/sample/StdAttachment/StdAttachment-Test1.$File";

    my $ContentRef = $Self->{MainObject}->FileRead(
        Location => $Location,
        Mode     => 'binmode',
        Type     => 'Local',
    );

    my $ArticleWriteAttachment = $TicketObject->ArticleWriteAttachment(
        Content     => ${$ContentRef},
        Filename    => "StdAttachment-Test1.$File",
        ContentType => $File,
        ArticleID   => $ArticleID42,
        UserID      => 1,
    );
}

# get articles and attachments
my @ArticleBox = $TicketObject->ArticleGet(
    TicketID => $TicketID4,
    UserID   => 1,
);

# start article loop
ARTICLE:
for my $Article (@ArticleBox) {

    for my $Key ( sort keys %{$Article} ) {
        if ( !$Article->{$Key} ) {
            $Article->{$Key} = '';
        }
        if ( $SkipFields{$Key} ) {
            delete $Article->{$Key};
        }
    }

    # get attachment index (without attachments)
    my %AtmIndex = $TicketObject->ArticleAttachmentIndex(
        ContentPath                => $Article->{ContentPath},
        ArticleID                  => $Article->{ArticleID},
        StripPlainBodyAsAttachment => 3,
        Article                    => $Article,
        UserID                     => 1,
    );

    # next if not attachments
    next ARTICLE if !IsHashRefWithData( \%AtmIndex );

    my @Attachments;
    ATTACHMENT:
    for my $FileID ( sort keys %AtmIndex ) {
        next ATTACHMENT if !$FileID;
        my %Attachment = $TicketObject->ArticleAttachment(
            ArticleID => $Article->{ArticleID},
            FileID    => $FileID,
            UserID    => 1,
        );

        # next if not attachment
        next ATTACHMENT if !IsHashRefWithData( \%Attachment );

        # convert content to base64
        $Attachment{Content}            = encode_base64( $Attachment{Content} );
        $Attachment{ContentID}          = '';
        $Attachment{ContentAlternative} = '';
        push @Attachments, {%Attachment};
    }

    # set Attachments data
    $Article->{Attachment} = \@Attachments;

}    # finish article loop

# get the Ticket entry
my %TicketEntryFour = $TicketObject->TicketGet(
    TicketID      => $TicketID4,
    DynamicFields => 0,
    UserID        => $Self->{UserID},
);

$Self->True(
    IsHashRefWithData( \%TicketEntryFour ),
    "TicketGet() successful for Local TicketGet Four ID $TicketID4",
);

for my $Key ( sort keys %TicketEntryFour ) {
    if ( !$TicketEntryFour{$Key} ) {
        $TicketEntryFour{$Key} = '';
    }
    if ( $SkipFields{$Key} ) {
        delete $TicketEntryFour{$Key};
    }
}

# add ticket id
push @TicketIDs, $TicketID4;

# set webservice name
my $WebserviceName = '-Test-' . $RandomID;

# create webservice object
my $WebserviceObject = Kernel::System::GenericInterface::Webservice->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
$Self->Is(
    'Kernel::System::GenericInterface::Webservice',
    ref $WebserviceObject,
    "Create webservice object",
);

my $WebserviceID = $WebserviceObject->WebserviceAdd(
    Name   => $WebserviceName,
    Config => {
        Debugger => {
            DebugThreshold => 'debug',
        },
        Provider => {
            Transport => {
                Type => '',
            },
        },
    },
    ValidID => 1,
    UserID  => 1,
);
$Self->True(
    $WebserviceID,
    "Added Webservice",
);

# get remote host with some precautions for certain unit test systems
my $Host;
my $FQDN = $Self->{ConfigObject}->Get('FQDN');

# try to resolve fqdn host
if ( $FQDN ne 'yourhost.example.com' && gethostbyname($FQDN) ) {
    $Host = $FQDN;
}

# try to resolve localhost instead
if ( !$Host && gethostbyname('localhost') ) {
    $Host = 'localhost';
}

# use hardcoded localhost ip address
if ( !$Host ) {
    $Host = '127.0.0.1';
}

# prepare webservice config
my $RemoteSystem =
    $Self->{ConfigObject}->Get('HttpType')
    . '://'
    . $Host
    . '/'
    . $Self->{ConfigObject}->Get('ScriptAlias')
    . '/nph-genericinterface.pl/WebserviceID/'
    . $WebserviceID;

my $WebserviceConfig = {

    #    Name => '',
    Description =>
        'Test for Ticket Connector using SOAP transport backend.',
    Debugger => {
        DebugThreshold => 'debug',
        TestMode       => 1,
    },
    Provider => {
        Transport => {
            Type   => 'HTTP::SOAP',
            Config => {
                MaxLength => 10000000,
                NameSpace => 'http://otrs.org/SoapTestInterface/',
                Endpoint  => $RemoteSystem,
            },
        },
        Operation => {
            TicketGet => {
                Type => 'Ticket::TicketGet',
            },
            SessionCreate => {
                Type => 'Session::SessionCreate',
            },
        },
    },
    Requester => {
        Transport => {
            Type   => 'HTTP::SOAP',
            Config => {
                NameSpace => 'http://otrs.org/SoapTestInterface/',
                Encoding  => 'UTF-8',
                Endpoint  => $RemoteSystem,
            },
        },
        Invoker => {
            TicketGet => {
                Type => 'Test::TestSimple',
            },
            SessionCreate => {
                Type => 'Test::TestSimple',
            },
        },
    },
};

# update webservice with real config
# the update is needed because we are using
# the WebserviceID for the Endpoint in config
my $WebserviceUpdate = $WebserviceObject->WebserviceUpdate(
    ID      => $WebserviceID,
    Name    => $WebserviceName,
    Config  => $WebserviceConfig,
    ValidID => 1,
    UserID  => $Self->{UserID},
);
$Self->True(
    $WebserviceUpdate,
    "Updated Webservice $WebserviceID - $WebserviceName",
);

# Get SessionID
# create requester object
my $RequesterSessionObject = Kernel::GenericInterface::Requester->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
$Self->Is(
    'Kernel::GenericInterface::Requester',
    ref $RequesterSessionObject,
    "SessionID - Create requester object",
);

# start requester with our webservice
my $RequesterSessionResult = $RequesterSessionObject->Run(
    WebserviceID => $WebserviceID,
    Invoker      => 'SessionCreate',
    Data         => {
        UserLogin => $UserLogin,
        Password  => $Password,
    },
);

my $NewSessionID = $RequesterSessionResult->{Data}->{SessionID};
my @Tests        = (
    {
        Name                    => 'Test 1',
        SuccessRequest          => 1,
        RequestData             => {},
        ExpectedReturnLocalData => {
            Data => {
                Error => {
                    ErrorCode    => 'TicketGet.MissingParameter',
                    ErrorMessage => 'TicketGet: TicketID parameter is missing!'
                    }
            },
            Success => 1
        },
        ExpectedReturnRemoteData => {
            Data => {
                Error => {
                    ErrorCode    => 'TicketGet.MissingParameter',
                    ErrorMessage => 'TicketGet: TicketID parameter is missing!'
                    }
            },
            Success => 1
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 2',
        SuccessRequest => 1,
        RequestData    => {
            TicketID => 'NotTicketID',
        },
        ExpectedReturnLocalData => {
            Data => {
                Error => {
                    ErrorCode => 'TicketGet.NotValidTicketID',
                    ErrorMessage =>
                        'TicketGet: Could not get Ticket data in Kernel::GenericInterface::Operation::Ticket::TicketGet::Run()'
                    }
            },
            Success => 1
        },
        ExpectedReturnRemoteData => {
            Data => {
                Error => {
                    ErrorCode => 'TicketGet.NotValidTicketID',
                    ErrorMessage =>
                        'TicketGet: Could not get Ticket data in Kernel::GenericInterface::Operation::Ticket::TicketGet::Run()'
                    }
            },
            Success => 1
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 3',
        SuccessRequest => '1',
        RequestData    => {
            TicketID => $TicketID1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryOne,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryOne,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 4',
        SuccessRequest => '1',
        RequestData    => {
            TicketID => $TicketID2,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryTwo,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryTwo,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 5',
        SuccessRequest => '1',
        RequestData    => {
            TicketID => $TicketID3,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryThree,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryThree,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 6',
        SuccessRequest => '1',
        RequestData    => {
            TicketID => $TicketID4,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryFour,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryFour,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 7',
        SuccessRequest => '1',
        RequestData    => {
            TicketID      => $TicketID1,
            DynamicFields => 1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryOneDF,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryOneDF,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 8',
        SuccessRequest => '1',
        RequestData    => {
            TicketID      => $TicketID2,
            DynamicFields => 1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryTwoDF,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryTwoDF,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 9',
        SuccessRequest => '1',
        RequestData    => {
            TicketID      => "$TicketID1, $TicketID2",
            DynamicFields => 1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryOneDF,
                    },
                    {
                        %TicketEntryTwoDF,
                    },
                ],
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryOneDF,
                    },
                    {
                        %TicketEntryTwoDF,
                    },
                    ]
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 10',
        SuccessRequest => '1',
        RequestData    => {
            TicketID    => $TicketID4,
            AllArticles => 1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryFour,
                    Article => \@ArticleWithoutAttachments,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryFour,
                        Article => \@ArticleWithoutAttachments,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
    {
        Name           => 'Test 11',
        SuccessRequest => '1',
        RequestData    => {
            TicketID    => $TicketID4,
            AllArticles => 1,
            Attachments => 1,
        },
        ExpectedReturnRemoteData => {
            Success => 1,
            Data    => {
                Ticket => {
                    %TicketEntryFour,
                    Article => \@ArticleBox,
                },
            },
        },
        ExpectedReturnLocalData => {
            Success => 1,
            Data    => {
                Ticket => [
                    {
                        %TicketEntryFour,
                        Article => \@ArticleBox,
                    }
                ],
            },
        },
        Operation => 'TicketGet',
    },
);

# debugger object
my $DebuggerObject = Kernel::GenericInterface::Debugger->new(
    %{$Self},
    ConfigObject   => $ConfigObject,
    DebuggerConfig => {
        DebugThreshold => 'debug',
        TestMode       => 1,
    },
    WebserviceID      => $WebserviceID,
    CommunicationType => 'Provider',
);
$Self->Is(
    ref $DebuggerObject,
    'Kernel::GenericInterface::Debugger',
    'DebuggerObject instanciate correctly',
);

for my $Test (@Tests) {

    # create local object
    my $LocalObject = "Kernel::GenericInterface::Operation::Ticket::$Test->{Operation}"->new(
        %{$Self},
        ConfigObject   => $ConfigObject,
        DebuggerObject => $DebuggerObject,
        WebserviceID   => $WebserviceID,
    );

    $Self->Is(
        "Kernel::GenericInterface::Operation::Ticket::$Test->{Operation}",
        ref $LocalObject,
        "$Test->{Name} - Create local object",
    );

    # start requester with our webservice
    my $LocalResult = $LocalObject->Run(
        WebserviceID => $WebserviceID,
        Invoker      => $Test->{Operation},
        Data         => {
            UserLogin => $UserLogin,
            Password  => $Password,
            %{ $Test->{RequestData} },
            }
    );

    # check result
    $Self->Is(
        'HASH',
        ref $LocalResult,
        "$Test->{Name} - Local result structure is valid",
    );

    # create requester object
    my $RequesterObject = Kernel::GenericInterface::Requester->new(
        %{$Self},
        ConfigObject => $ConfigObject,
    );
    $Self->Is(
        'Kernel::GenericInterface::Requester',
        ref $RequesterObject,
        "$Test->{Name} - Create requester object",
    );

    # start requester with our webservice
    my $RequesterResult = $RequesterObject->Run(
        WebserviceID => $WebserviceID,
        Invoker      => $Test->{Operation},
        Data         => {
            SessionID => $NewSessionID,
            %{ $Test->{RequestData} },
            }
    );

    # check result
    $Self->Is(
        'HASH',
        ref $RequesterResult,
        "$Test->{Name} - Requester result structure is valid",
    );

    $Self->Is(
        $RequesterResult->{Success},
        $Test->{SuccessRequest},
        "$Test->{Name} - Requester successful result",
    );

    # workaround because results from direct call and
    # from SOAP call are a little bit different
    if ( $Test->{Operation} eq 'TicketGet' ) {

        if ( ref $LocalResult->{Data}->{Ticket} eq 'ARRAY' ) {
            for my $Item ( @{ $LocalResult->{Data}->{Ticket} } ) {
                for my $Key ( sort keys %{$Item} ) {
                    if ( !$Item->{$Key} ) {
                        $Item->{$Key} = '';
                    }
                    if ( $SkipFields{$Key} ) {
                        delete $Item->{$Key};
                    }
                }

                # Articles
                if ( defined $Item->{Article} ) {
                    for my $Article ( @{ $Item->{Article} } ) {
                        for my $Key ( sort keys %{$Article} ) {
                            if ( !$Article->{$Key} ) {
                                $Article->{$Key} = '';
                            }
                            if ( $SkipFields{$Key} ) {
                                delete $Article->{$Key};
                            }

                            if ( $Key eq 'Attachment' ) {
                                for my $Atm ( @{ $Article->{$Key} } ) {
                                    $Atm->{ContentID}          = '';
                                    $Atm->{ContentAlternative} = '';
                                }
                            }
                        }
                    }
                }
            }

        }

        if (
            defined $RequesterResult->{Data}
            && defined $RequesterResult->{Data}->{Ticket}
            )
        {
            if ( ref $RequesterResult->{Data}->{Ticket} eq 'ARRAY' ) {
                for my $Item ( @{ $RequesterResult->{Data}->{Ticket} } ) {
                    for my $Key ( sort keys %{$Item} ) {
                        if ( !$Item->{$Key} ) {
                            $Item->{$Key} = '';
                        }
                        if ( $SkipFields{$Key} ) {
                            delete $Item->{$Key};
                        }
                    }
                }
            }
            elsif ( ref $RequesterResult->{Data}->{Ticket} eq 'HASH' ) {
                for my $Key ( sort keys %{ $RequesterResult->{Data}->{Ticket} } ) {
                    if ( !$RequesterResult->{Data}->{Ticket}->{$Key} ) {
                        $RequesterResult->{Data}->{Ticket}->{$Key} = '';
                    }
                    if ( $SkipFields{$Key} ) {
                        delete $RequesterResult->{Data}->{Ticket}->{$Key};
                    }
                }

                # Articles
                if ( defined $RequesterResult->{Data}->{Ticket}->{Article} ) {
                    for my $Article ( @{ $RequesterResult->{Data}->{Ticket}->{Article} } ) {
                        for my $Key ( sort keys %{$Article} ) {
                            if ( !$Article->{$Key} ) {
                                $Article->{$Key} = '';
                            }
                            if ( $SkipFields{$Key} ) {
                                delete $Article->{$Key};
                            }
                            if ( $Key eq 'Attachment' ) {
                                for my $Atm ( @{ $Article->{$Key} } ) {
                                    $Atm->{ContentID}          = '';
                                    $Atm->{ContentAlternative} = '';
                                }
                            }
                        }
                    }
                }
            }
        }

    }

    # remove ErrorMessage parameter from direct call
    # result to be consistent with SOAP call result
    if ( $LocalResult->{ErrorMessage} ) {
        delete $LocalResult->{ErrorMessage};
    }

    $Self->IsDeeply(
        $RequesterResult,
        $Test->{ExpectedReturnRemoteData},
        "$Test->{Name} - Requester success status (needs configured and running webserver)",
    );

    if ( $Test->{ExpectedReturnLocalData} ) {
        $Self->IsDeeply(
            $LocalResult,
            $Test->{ExpectedReturnLocalData},
            "$Test->{Name} - Local result matched with expected local call result.",
        );
    }
    else {
        $Self->IsDeeply(
            $LocalResult,
            $Test->{ExpectedReturnRemoteData},
            "$Test->{Name} - Local result matched with remote result.",
        );
    }

}    #end loop

# clean up

# clean up webservice
my $WebserviceDelete = $WebserviceObject->WebserviceDelete(
    ID     => $WebserviceID,
    UserID => $Self->{UserID},
);
$Self->True(
    $WebserviceDelete,
    "Deleted Webservice $WebserviceID",
);

for my $TicketID (@TicketIDs) {

    # delete the ticket Three
    my $TicketDelete = $TicketObject->TicketDelete(
        TicketID => $TicketID,
        UserID   => $Self->{UserID},
    );

    # sanity check
    $Self->True(
        $TicketDelete,
        "TicketDelete() successful for Ticket ID $TicketID",
    );
}

for my $FieldID (@TestDynamicFields) {

    # delete the dynamic field
    my $DFDelete = $DynamicFieldObject->DynamicFieldDelete(
        ID      => $FieldID,
        UserID  => 1,
        Reorder => 0,
    );

    # sanity check
    $Self->True(
        $DFDelete,
        "DynamicFieldDelete() successful for Field ID $FieldID",
    );
}

1;
