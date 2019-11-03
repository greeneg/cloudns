package CloudNS::Utils;

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
    use Exporter;
    our ($VERSION, @EXPORT, @EXPORT_OK);

    # set the version for version checking
    $VERSION     = '1.0';
    @EXPORT      = qw(
        err_log
    );
    @EXPORT_OK   = qw();
}

sub err_log {
    return print {*STDERR} "@_\n";
}

END { }       # module clean-up code here (global destructor)

true;  # don't forget to return a true value from the file
