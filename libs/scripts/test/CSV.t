# --
# CSV.t - CSV tests
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

use Kernel::System::CSV;

# create local object
my $CSVObject = Kernel::System::CSV->new( %{$Self} );

my $CSV = $CSVObject->Array2CSV(
    Head => [ 'RowA', 'RowB', ],
    Data => [
        [ 1,  4 ],
        [ 7,  3 ],
        [ 1,  9 ],
        [ 34, 4 ],
    ],
);

my $CSVReference = qq{"RowA";"RowB"\n}
    . qq{"1";"4"\n}
    . qq{"7";"3"\n}
    . qq{"1";"9"\n}
    . qq{"34";"4"\n};

$Self->Is(
    $CSV || '',
    $CSVReference,
    '#0 Array2CSV()',
);

my $Array = $CSVObject->CSV2Array(
    String    => '"field1";"field2";"field3"' . "\n" . '"2";"3";"4"' . "\n",
    Separator => ';',
    Quote     => '"',
);

$Self->Is(
    $Array->[0]->[0] || '',
    'field1',
    '#1 CSV2Array() - with quote "',
);
$Self->Is(
    $Array->[0]->[2] || '',
    'field3',
    '#1 CSV2Array() - with quote "',
);
$Self->Is(
    $Array->[1]->[1] || '',
    '3',
    '#1 CSV2Array() - with quote "',
);
$Self->Is(
    $#{$Array} || '',
    1,
    '#1 CSV2Array() - with quote "',
);
$Self->Is(
    $#{ $Array->[1] } || '',
    2,
    '#1 CSV2Array() - with quote "',
);

$Array = $CSVObject->CSV2Array(
    String    => "field1;field2;field3\n2;3;4\n",
    Separator => ';',
    Quote     => '',
);

$Self->Is(
    $Array->[0]->[0] || '',
    'field1',
    '#2 CSV2Array()',
);
$Self->Is(
    $Array->[0]->[2] || '',
    'field3',
    '#2 CSV2Array()',
);
$Self->Is(
    $Array->[1]->[1] || '',
    '3',
    '#2 CSV2Array()',
);
$Self->Is(
    $#{$Array} || '',
    1,
    '#2 CSV2Array()',
);
$Self->Is(
    $#{ $Array->[1] } || '',
    2,
    '#2 CSV2Array()',
);

# Working with CSVString with \n
my $String
    = '"field1";"field2";"field3"' . "\n" . '"a' . "\n"
    . 'b";"FirstLine' . "\n"
    . 'SecondLine";"4"' . "\n";
$Array = $CSVObject->CSV2Array(
    String    => $String,
    Separator => ';',
    Quote     => '"',
);

$Self->Is(
    $Array->[0]->[0] || '',
    'field1',
    '#3 CSV2Array() - with  new line in content',
);
$Self->Is(
    $Array->[0]->[2] || '',
    'field3',
    '#3 CSV2Array() - with  new line in content',
);
$Self->Is(
    $Array->[1]->[0] || '',
    "a\nb",
    '#3 CSV2Array() - with  new line in content',
);
$Self->Is(
    $#{$Array} || '',
    1,
    '#3 CSV2Array() - with  new line in content',
);
$Self->Is(
    $#{ $Array->[1] } || '',
    2,
    '#3 CSV2Array() - with  new line in content',
);

# Working with CSVString with \r
$String
    = '"field1";"field2";"field3"' . "\r" . '"a' . "\r"
    . 'b";"FirstLine' . "\r"
    . 'SecondLine";"4"' . "\r";
$Array = $CSVObject->CSV2Array(
    String    => $String,
    Separator => ';',
    Quote     => '"',
);

$Self->Is(
    $Array->[0]->[0] || '',
    'field1',
    '#4 CSV2Array() - with dos file',
);
$Self->Is(
    $Array->[0]->[2] || '',
    'field3',
    '#4 CSV2Array() - with dos file',
);
$Self->Is(
    $Array->[1]->[0] || '',
    "a\nb",
    '#4 CSV2Array() - with dos file',
);
$Self->Is(
    $#{$Array} || '',
    1,
    '#4 CSV2Array() - with dos file',
);
$Self->Is(
    $#{ $Array->[1] } || '',
    2,
    '#4 CSV2Array() - with dos file',
);

# -------------------------------------------------
# tests because of the double "" problem bug# 2263
# -------------------------------------------------
my $TextWithNewLine = "Hallo guys,\nhere was a newline. And again.\n";
my @TableData       = (
    [
        '<a href="/sirios-cvs-utf8/index.pl?Action=AgentStats&Subaction=Overview" class="navitem">Übersicht</a>',
        '"'
    ],
    [ '4""4', 'asdf"SDF' ],
    [ '"a"',  "xxx" ],
    [ 34,     $TextWithNewLine ],
);

$CSV = $CSVObject->Array2CSV(
    Head => [ 'RowA', 'RowB', ],
    Data => \@TableData,
);

$CSVReference = qq{"RowA";"RowB"\n}
    . qq{"<a href=""/sirios-cvs-utf8/index.pl?Action=AgentStats&Subaction=Overview"" class=""navitem"">Übersicht</a>";""""\n}
    . qq{"4""""4";"asdf""SDF"\n}
    . qq{"""a""";"xxx"\n}
    . qq{"34";"} . $TextWithNewLine . qq{"\n};

$Self->Is(
    $CSV || '',
    $CSVReference,
    'Array2CSV() with ""',
);

my $ArrayRef = $CSVObject->CSV2Array(
    String    => $CSV,
    Separator => ';',
    Quote     => '"',
);

shift @{$ArrayRef};

for my $Row ( 0 .. $#TableData ) {
    for my $Column ( 0 .. $#{ $TableData[0] } ) {
        $Self->Is(
            $TableData[$Row][$Column],
            $ArrayRef->[$Row][$Column],
            'CSV2Array() with " in content',
        );
    }
}

1;
