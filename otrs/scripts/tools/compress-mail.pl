#!/usr/bin/perl
# --
# scripts/tools/compress-mail.pl - compress email, zip attachments
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

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin) . "/../";
use lib dirname($RealBin) . "/../Kernel/cpan-lib";

# config
my @Compress
    = qw(xls doc dot bmp tiff tif jpg pdf exe class pm pl ps eps ppt rft php php3 php4 js com latex tex tcl sql wav wbmp css html htm phtml sgm shml xml xsl rtx txt asc vcf vcs);

use Compress::Zlib;
use Kernel::Config;
use Kernel::System::Encode;
use Kernel::System::Log;
use Kernel::System::Main;
use Kernel::System::DB;
use Kernel::System::EmailParser;

# create common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{EncodeObject} = Kernel::System::Encode->new(%CommonObject);
$CommonObject{LogObject}    = Kernel::System::Log->new(
    LogPrefix => 'OTRS-PM-Compress',
    %CommonObject,
);
$CommonObject{MainObject} = Kernel::System::Main->new(%CommonObject);
my @Email = <STDIN>;
$CommonObject{ParserObject} = Kernel::System::EmailParser->new(
    Email        => \@Email,
    NoHTMLChecks => 1,
    %CommonObject,
);
my $MSGID   = $CommonObject{ParserObject}->GetParam( WHAT => 'Message-ID' ) || 'No Message-ID';
my $Touch   = 0;
my $NoTouch = 0;
my $Counter = 0;
my $CompressAttachmentMinSize = $CommonObject{ConfigObject}->Get('CompressAttachmentMinSize')
    || ( 1014 * 3 );
my $CompressAttachmentMaxSize = $CommonObject{ConfigObject}->Get('CompressAttachmentMaxSize')
    || ( 1024 * 1024 * 60 );
my $CompressAttachmentNoTouch = $CommonObject{ConfigObject}->Get('CompressAttachmentNoTouch')
    || '(application/(x-pkcs.-signature|pgp-signature))';
my @Attachments = $CommonObject{ParserObject}->GetAttachments();
my $Entity;
my $Header = $CommonObject{ParserObject}->{HeaderObject}->header_hashref();

# check if this mail can be modified (not touch signed or crypted emails)
for my $Attachment (@Attachments) {
    if ( $Attachment->{MimeType} && $Attachment->{MimeType} =~ /$CompressAttachmentNoTouch/i ) {
        $NoTouch = 1;
    }
}

# just compress touchable emails
if ( !$NoTouch ) {
    for my $Attachment (@Attachments) {
        $Counter++;
        my $Compress = 0;

        # just compress attachments after the first one
        if ( $Counter > 1 ) {

            # check if attachment should be compresed
            for (@Compress) {
                if ( $Attachment->{Filename} =~ /\.$_$/i ) {

                    # just compress attachments within a size range
                    my $FileSize = bytes::length( $Attachment->{Content} );
                    if (
                        $FileSize > $CompressAttachmentMinSize
                        && $FileSize < $CompressAttachmentMaxSize
                        )
                    {
                        $Compress = 1;
                        $Touch    = 1;
                    }
                }
            }
        }

        # compress attachment
        if ($Compress) {
            $CommonObject{LogObject}->Log(
                Priority => 'notice',
                Message  => "Compress $Attachment->{Filename} ($MSGID)!",
            );
            $Attachment->{Filename} .= '.gz';
            $Attachment->{Content}     = Compress::Zlib::memGzip( $Attachment->{Content} );
            $Attachment->{ContentType} = 'application/x-gzip';
        }

        # build new entity
        if ( !$Entity ) {
            $Entity = MIME::Entity->build(
                %{$Header},

                #               Filename => $Attachment->{Filename},
                Data => $Attachment->{Content},

                #               Type     => $Attachment->{ContentType},
                #               Encoding => "base64",
            );
        }

        # add attachment to entity
        $Entity->attach(
            Filename => $Attachment->{Filename},
            Data     => $Attachment->{Content},
            Type     => $Attachment->{ContentType},
            Encoding => "base64",
        );
    }
}

# return old email 1:1
if ( !$Touch ) {
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "No changes ($MSGID)!",
    );
    my $Header = $CommonObject{ParserObject}->{HeaderObject}->as_string();
    print $Header;
    print "\n";
    for (@Email) {
        print $_;
    }
}

# return modified email
else {
    $CommonObject{LogObject}->Log(
        Priority => 'notice',
        Message  => "Changes ($MSGID)!"
    );
    my $Header = $CommonObject{ParserObject}->{HeaderObject}->as_string();
    print $Header;
    print "\n";
    print $Entity->body_as_string();
}
