# --
# Salutation.t - Salutation tests
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));
use utf8;

use Kernel::System::Salutation;

my $SalutationObject = Kernel::System::Salutation->new( %{$Self} );

# add salutation
my $SalutationNameRand0 = 'example-salutation' . int( rand(1000000) );
my $Salutation          = "Dear <OTRS_CUSTOMER_Realname>,

Thank you for your request. Your email address in our database
is \"<OTRS_CUSTOMER_DATA_UserEmail>\".
";

my $SalutationID = $SalutationObject->SalutationAdd(
    Name        => $SalutationNameRand0,
    Text        => $Salutation,
    ContentType => 'text/plain; charset=iso-8859-1',
    Comment     => 'some comment',
    ValidID     => 1,
    UserID      => 1,
);

$Self->True(
    $SalutationID,
    'SalutationAdd()',
);

my %Salutation = $SalutationObject->SalutationGet( ID => $SalutationID );

$Self->Is(
    $Salutation{Name} || '',
    $SalutationNameRand0,
    'SalutationGet() - Name',
);
$Self->True(
    $Salutation{Text} eq $Salutation,
    'SalutationGet() - Salutation',
);
$Self->Is(
    $Salutation{ContentType} || '',
    'text/plain; charset=iso-8859-1',
    'SalutationGet() - Comment',
);
$Self->Is(
    $Salutation{Comment} || '',
    'some comment',
    'SalutationGet() - Comment',
);
$Self->Is(
    $Salutation{ValidID} || '',
    1,
    'SalutationGet() - ValidID',
);

my %SalutationList = $SalutationObject->SalutationList( Valid => 0 );
my $Hit = 0;
for ( sort keys %SalutationList ) {
    if ( $_ eq $SalutationID ) {
        $Hit = 1;
    }
}
$Self->True(
    $Hit eq 1,
    'SalutationList()',
);

my $SalutationUpdate = $SalutationObject->SalutationUpdate(
    ID          => $SalutationID,
    Name        => $SalutationNameRand0 . '1',
    Text        => $Salutation . '1',
    ContentType => 'text/plain; charset=utf-8',
    Comment     => 'some comment 1',
    ValidID     => 2,
    UserID      => 1,
);

$Self->True(
    $SalutationUpdate,
    'SalutationUpdate()',
);

%Salutation = $SalutationObject->SalutationGet( ID => $SalutationID );

$Self->Is(
    $Salutation{Name} || '',
    $SalutationNameRand0 . '1',
    'SalutationGet() - Name',
);
$Self->True(
    $Salutation{Text} eq $Salutation . '1',
    'SalutationGet() - Salutation',
);
$Self->Is(
    $Salutation{ContentType} || '',
    'text/plain; charset=utf-8',
    'SalutationGet() - Comment',
);
$Self->Is(
    $Salutation{Comment} || '',
    'some comment 1',
    'SalutationGet() - Comment',
);
$Self->Is(
    $Salutation{ValidID} || '',
    2,
    'SalutationGet() - ValidID',
);

1;
