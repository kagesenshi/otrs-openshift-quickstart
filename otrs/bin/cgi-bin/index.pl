#!/usr/bin/perl
# --
# bin/cgi-bin/index.pl - the global CGI handle file (incl. auth) for OTRS
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

# use ../../ as lib location
use lib "$ENV{'OPENSHIFT_REPO_DIR'}/otrs";
use lib "$ENV{'OPENSHIFT_REPO_DIR'}/otrs/Kernel/cpan-lib";
use lib "$ENV{'OPENSHIFT_REPO_DIR'}/otrs/Custom";

# 0=off;1=on;
my $Debug = 0;

# load agent web interface
use Kernel::System::Web::InterfaceAgent();

# create new object
my $Interface = Kernel::System::Web::InterfaceAgent->new( Debug => $Debug );

# execute object
$Interface->Run();
