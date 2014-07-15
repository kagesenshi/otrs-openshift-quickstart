# --
# Transition.t - Transition module testscript
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
use Kernel::Config;
use Kernel::System::ProcessManagement::Transition;
use Kernel::System::UnitTest::Helper;
use Kernel::System::VariableCheck qw(:all);

# create local objects
my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %{$Self},
    UnitTestObject             => $Self,
    RestoreSystemConfiguration => 0,
);

my $ConfigObject = Kernel::Config->new();

my $TransitionObject = Kernel::System::ProcessManagement::Transition->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

# define needed variables
my $RandomID = $HelperObject->GetRandomID();

# ------------------------------------------------------------ #
# define general tests
# ------------------------------------------------------------ #
my @Tests = (

    # Get on invalid TransitionEntityID
    {
        Get => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            TransitionEntityID => 'unknown123',
            Message            => 'TransitionGet() (unknown TransitionEntityID)',
            TestType           => 'False',
        },
    },

    # Get on valid TransitionEntityID
    {
        Get => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionGet() (known TransitionEntityID)',
            TestType           => 'Result',
            Result             => {
                Name      => 'Transition 2 optional',
                Condition => {
                    Cond1 => {
                        Fields => {
                            Queue                => ['Raw'],
                            DynamicField_Make    => ['2'],
                            DynamicField_VWModel => ['2'],
                        },
                    },
                },
            },
        },
    },

    # Get on valid TransitionEntityID with UTF8 Chars
    {
        Get => {
            Config => {
                'T2' . $RandomID => {
                    Name =>
                        'äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ-カスタ-用迎使用-Язык',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionGet() (known TransitionEntityID)',
            TestType           => 'Result',
            Result             => {
                Name =>
                    'äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ-カスタ-用迎使用-Язык',
                Condition => {
                    Cond1 => {
                        Fields => {
                            Queue                => ['Raw'],
                            DynamicField_Make    => ['2'],
                            DynamicField_VWModel => ['2'],
                        },
                    },
                },
            },
        },
    },

    # Check on undef TransitionEntityID
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => undef,
            Message            => 'TransitionCheck() (no TransitionEntityID)',
            TestType           => 'False',
        },
    },

    # Check on empty TransitionEntityID
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => '',
            Message            => 'TransitionCheck() (emtpy TransitionEntityID)',
            TestType           => 'False',
        },
    },

    # Check on unknown TransitionEntityID
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'UnknownTransition12345',
            Message            => 'TransitionCheck() (unknown TransitionEntityID)',
            TestType           => 'False',
        },
    },

    # Check on empty Data
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data               => '',
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (empty Data)',
            TestType           => 'False',
        },
    },

    # Check on missing Condition
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (missing Condition)',
            TestType           => 'False',
        },
    },

    # Check on unknown Condition Type
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'unknown123',
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (impossible Condition Type)',
            TestType           => 'False',
        },
    },

    # Check on missing Cond Fields
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (missing Cond Fields)',
            TestType           => 'False',
        },
    },

    # Check on unknown Cond Type
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Type   => 'unknown',
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Impossible Condition->Cond Type)',
            TestType           => 'False',
        },
    },

    # Check on string check on Array
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue => {
                                    Type  => 'String',
                                    Match => ['Raw'],
                                },
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => 'Raw',
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (String check on Array)',
            TestType           => 'False',
        },
    },

    # Check: Condition->Cond->Type 'or' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Type   => 'or',
                            Fields => {
                                Queue             => ['Raw'],
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 7,
                    2 => 8,
                    3 => 11,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Cond->Type "or" check)',
            TestType           => 'True',
        },
    },

    # Check: Condition->Cond->Type invalid 'or' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Type   => 'or',
                            Fields => {
                                Queue             => ['Raw'],
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 3,
                    3 => 4,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Cond->Type "or" fail check)',
            TestType           => 'True',
        },
    },

    # Check: Condition->Cond->Type 'xor' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Type   => 'xor',
                            Fields => {
                                Queue             => ['Raw'],
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 7,
                    2 => 8,
                    3 => 11,
                },
                DynamicField_VWModel => ['1'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Cond->Type "xor" check)',
            TestType           => 'True',
        },
    },

    # Check: Condition->Cond->Type invalid 'xor' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Type   => 'xor',
                            Fields => {
                                Queue             => ['Raw'],
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 7,
                    2 => 8,
                    3 => 11,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Cond->Type "xor" fail check)',
            TestType           => 'False',
        },
    },

    # Check: Condition->Type 'and' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 3,
                    3 => 4,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Type "and" check)',
            TestType           => 'True',
        },
    },

    # Check: Condition->Type invalid 'and' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 19,
                    3 => 4,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Type "and" fail check)',
            TestType           => 'False',
        },
    },

    # Check: Condition->Type 'xor' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'xor',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 19,
                    3 => 4,
                },
                DynamicField_VWModel => ['17'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Type "xor" check)',
            TestType           => 'True',
        },
    },

    # Check: Condition->Type invalid 'xor' check
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'xor',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 3,
                    3 => 4,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Condition->Type "xor" fail check)',
            TestType           => 'False',
        },
    },

    # Check on Hash
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue             => ['Raw'],
                                DynamicField_Make => {
                                    Type  => 'Hash',
                                    Match => {
                                        1 => 2,
                                        2 => 3,
                                        3 => 4,
                                    },
                                },
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue             => ['Raw'],
                DynamicField_Make => {
                    1 => 2,
                    2 => 3,
                    3 => 4,
                },
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Hash check)',
            TestType           => 'True',
        },
    },

    # Check on simple Array
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue                => ['Raw'],
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Simple array of values)',
            TestType           => 'True',
        },
    },

    # Check on simple String
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Cond1 => {
                            Fields => {
                                Queue => {
                                    Type  => 'String',
                                    Match => 'Raw',
                                },
                                DynamicField_Make    => ['2'],
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => 'Raw',
                DynamicField_Make    => ['2'],
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Simple value String)',
            TestType           => 'True',
        },
    },

    # Check: Regexp test for true
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => qr/^VW$/,
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => 'VW',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Regexp check)',
            TestType           => 'True',
        },
    },

    # Check: Regexp test for true (with plain text Regexp)
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => '^VW$',
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => 'VW',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Regexp check with plain text Regexp)',
            TestType           => 'True',
        },
    },

    # Check: Regexp test for fail
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => qr/^VW$/,
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => 'oVoWo',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Regexp fail check)',
            TestType           => 'False',
        },
    },

    # Check: Regexp test for fail (with plain text Regexp)
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => '^VW$',
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => 'oVoWo',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Regexp fail check with plain text Regexp)',
            TestType           => 'False',
        },
    },

    # Check: Regexp test for fail (with plain text invalid Regexp)
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => ['Raw'],
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => '^(#)?([\w-\*]+))',
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => ['Raw'],
                DynamicField_Make    => 'oVoWo',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message  => 'TransitionCheck() (Regexp fail check with plain text invalid Regexp)',
            TestType => 'False',
        },
    },

    # Check: Module test for true
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => {
                                    Type => 'Module',
                                    Match =>
                                        'Kernel::System::ProcessManagement::TransitionValidation::ValidateDemo',
                                },
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => qr/^VW$/,
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => 'Raw',
                DynamicField_Make    => 'VW',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Module check)',
            TestType           => 'True',
        },
    },

    # Check: Module test for fail
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => {
                                    Type => 'Module',
                                    Match =>
                                        'Kernel::System::ProcessManagement::TransitionValidation::ValidateDemo',
                                },
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => qr/^VW$/,
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => 'Rawer',
                DynamicField_Make    => 'VW',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Module fail check)',
            TestType           => 'False',
        },
    },

    # Check: Module test for non existing module
    {
        Check => {
            Config => {
                'T2' . $RandomID => {
                    Name      => 'Transition 2 optional',
                    Condition => {
                        Type  => 'and',
                        Cond1 => {
                            Fields => {
                                Queue => {
                                    Type => 'Module',
                                    Match =>
                                        'Kernel::System::ProcessManagement::TransitionValidation::UnkownModule',
                                },
                            },
                        },
                        Cond2 => {
                            Fields => {
                                DynamicField_Make => {
                                    Type  => 'Regexp',
                                    Match => qr/^VW$/,
                                },
                            },
                        },
                        Cond3 => {
                            Fields => {
                                DynamicField_VWModel => ['2'],
                            },
                        },
                    },
                },
            },
            Data => {
                Queue                => 'Rawer',
                DynamicField_Make    => 'VW',
                DynamicField_VWModel => ['2'],
            },
            TransitionEntityID => 'T2' . $RandomID,
            Message            => 'TransitionCheck() (Module fail check)',
            TestType           => 'False',
        },
    },
);

for my $Test (@Tests) {
    if ( $Test->{Check} ) {

        # Set Config
        if ( IsHashRefWithData( $Test->{Check}{Config} ) ) {
            $ConfigObject->Set(
                Key   => 'Process::Transition',
                Value => {},
            );
            $ConfigObject->Set(
                Key   => 'Process::Transition',
                Value => $Test->{Check}{Config},
            );
        }
        if ( $Test->{Check}{TestType} eq 'False' ) {

            # TransitionCheck - No Params
            $Self->False(
                $TransitionObject->TransitionCheck(
                    TransitionEntityID => $Test->{Check}{TransitionEntityID},
                    Data               => $Test->{Check}{Data}
                    )
                    || 0,
                $Test->{Check}{Message},
            );
        }
        elsif ( $Test->{Check}{TestType} eq 'True' ) {

            # TransitionCheck - No Params
            $Self->True(
                $TransitionObject->TransitionCheck(
                    TransitionEntityID => $Test->{Check}{TransitionEntityID},
                    Data               => $Test->{Check}{Data}
                    )
                    || 0,
                $Test->{Check}{Message},
            );
        }
    }
    elsif ( $Test->{Get} ) {

        # Set Config
        if ( IsHashRefWithData( $Test->{Get}{Config} ) ) {
            $ConfigObject->Set(
                Key   => 'Process::Transition',
                Value => {},
            );
            $ConfigObject->Set(
                Key   => 'Process::Transition',
                Value => $Test->{Get}{Config},
            );
        }
        if ( $Test->{Get}{TestType} eq 'False' ) {

            # TransitionCheck - No Params
            $Self->False(
                $TransitionObject->TransitionGet(
                    TransitionEntityID => $Test->{Get}{TransitionEntityID}
                    )
                    || 0,
                $Test->{Get}{Message},
            );
        }
        elsif ( $Test->{Get}{TestType} eq 'True' ) {

            # TransitionCheck - No Params
            $Self->True(
                $TransitionObject->TransitionGet(
                    TransitionEntityID => $Test->{Get}{TransitionEntityID}
                    )
                    || 0,
                $Test->{Get}{Message},
            );
        }
        elsif ( $Test->{Get}{TestType} eq 'Result' ) {
            my $GetResult
                = $TransitionObject->TransitionGet(
                TransitionEntityID => $Test->{Get}{TransitionEntityID}
                );
            my $ExpectedResult = $Test->{Get}{Result};

            # Get - Check given and expected result
            $Self->IsDeeply(
                $GetResult,
                $ExpectedResult,
                $Test->{Get}{Message},
            );
        }
    }
}

my %TransitionConfig = (
    'T1' . $RandomID => {
        Name       => 'Transition 1 optional',
        CreateTime => '09-02-2012 13:37:00',     # optional
        CreateBy   => '2',                       # optional
        ChangeTime => '10-02-2012 13:37:00',     # optional
        ChangeBy   => '3',                       # optional
        Condition  => {
            Type  => 'and',                      # 'or', 'xor'
            Cond1 => {
                Type   => 'and',                 # 'or', 'xor'
                Fields => {
                    DynamicField_Make => {
                        Type => 'String' || 'Hash' || 'Array' || 'Regexp' || 'Module',
                        Match => 'Teststring',    # Type = String => 'String',
                                                  # Type = Regexp => qr{ [\n\r\f] }xms
                                                  # Type = Hash => { key1 => val1, key2 => val2}
                                                  # Type = Array => [val1, val2, val3]
                                                  # Type = Module => 'Kernel::System::',
                                                  # ... to be continued
                    },
                    DynamicField_VWModel => ['1'],
                },
            },
            Cond2 => {
                DynamicField_Make         => ['2'],
                DynamicField_PeugeotModel => ['1'],
            },
        },
    },
    'T2' . $RandomID => {
        Name       => 'Transition 2 optional',
        CreateTime => '09-02-2012 13:37:00',
        CreateBy   => '3',
        ChangeTime => '10-02-2012 13:37:00',
        ChangeBy   => '2',
        Condition  => {
            Cond1 => {
                Fields => {
                    Queue                => ['Raw'],
                    DynamicField_Make    => ['2'],
                    DynamicField_VWModel => ['2'],
                },
            },
        },
    },
);

1;
