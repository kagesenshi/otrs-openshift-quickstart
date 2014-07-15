# --
# LoopProtection.t - PostMaster tests
# Copyright (C) 2001-2014 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));

use Kernel::System::PostMaster::LoopProtection;
use Kernel::Config;

# create local config object
my $ConfigObject = Kernel::Config->new();

for my $Module (qw(DB FS)) {
    $ConfigObject->Set(
        Key   => 'LoopProtectionModule',
        Value => "Kernel::System::PostMaster::LoopProtection::$Module",
    );

    my $LoopProtectionObject = Kernel::System::PostMaster::LoopProtection->new(
        %{$Self},
        ConfigObject => $ConfigObject,
    );

    # get rand sender address
    my $UserRand1 = 'example-user' . int( rand(1000000) ) . '@example.com';

    my $Check = $LoopProtectionObject->Check( To => $UserRand1 );

    $Self->True(
        $Check || 0,
        "#$Module - Check() - $UserRand1",
    );

    for ( 1 .. 42 ) {
        my $SendEmail = $LoopProtectionObject->SendEmail( To => $UserRand1 );
        $Self->True(
            $SendEmail || 0,
            "#$Module - SendEmail() - #$_ ",
        );
    }

    $Check = $LoopProtectionObject->Check( To => $UserRand1 );

    $Self->False(
        $Check || 0,
        "#$Module - Check() - $UserRand1",
    );
}

1;
