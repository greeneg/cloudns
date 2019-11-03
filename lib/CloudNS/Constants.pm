package CloudNS::Constants;

use strict;
use warnings FATAL => 'all';
use English qw(-no_match_vars);
use utf8;

use feature ':5.28';
use FindBin;
use lib "$FindBin::Bin/../lib";

use boolean qw(:all);
use feature ':5.28';
no warnings "experimental::lexical_subs";
no warnings "experimental::signatures";
use feature 'lexical_subs';
use feature 'signatures';

use base qw(Exporter);
use Carp;
use Data::Dumper;

BEGIN {
    use Exporter   ();

    my ($VERSION, @EXPORT, @EXPORT_OK, %EXPORT_TAGS);

    # set the version for version checking
    $VERSION     = '1.0';
    @EXPORT      = qw(
        $version
        $license
        $copyright
    );
    %EXPORT_TAGS = (
        All => [
            qw(
                $version
                $license
                $copyright
            )
        ]
    );     # eg: TAG => [ qw!name1 name2! ],

    # your exported package globals go here,
    # as well as any optionally exported functions
    @EXPORT_OK   = qw($version $license $copyright);
}

our @EXPORT_OK;

# exported package globals go here
our $version;
our $license;
our $copyright;

# initialize package globals, first exported ones
$version   = '1.0';
$license   = 'Licensed under the Apache Public License version 2.0';
$copyright = 'Copyright ©2019, YggdrasilSoft, LLC.';

END { }       # module clean-up code here (global destructor)

true;