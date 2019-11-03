#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use English qw(-no_match_vars);
use utf8;

use FindBin;
use lib "$FindBin::Bin/../lib";

BEGIN {
    # @INC path manipulation
    use Cwd qw(abs_path);
    use File::Basename qw(dirname);
    our $prefix = dirname(abs_path($0)) . "/../lib";
    # this evil is necessary to fool taint, which is too strict here.
    if ($prefix =~ /(.*)/) {
        $prefix = $1;
    } else {
        die; # should NEVER happen.
    }
    push(@INC, $prefix);
}

use boolean qw(:all);
use feature ':5.28';
no warnings "experimental::lexical_subs";
no warnings "experimental::signatures";
use feature 'lexical_subs';
use feature 'signatures';

use CloudNS;
use Plack::Builder;

use CloudNS::Utils qw(err_log);
use CloudNS::Constants;

our $VERSION = $CloudNS::Constants::version;
my $DEBUG = true;

sub main {
    say STDERR '>> Starting the Buyo application server version '. $CloudNS::Constants::version;
    say STDERR '>> '. $CloudNS::Constants::license;
    say STDERR '-------------------------------------------------------------';
    err_log('== DEBUGGING ==: PERL INCLUDE PATH:') if $DEBUG;
    if ($DEBUG) {
        foreach my $p (@INC) {
            say {*STDERR} "== DEBUGGING ==:    $p";
        }
    }

    err_log('== DEBUGGING ==: MOUNTING PLACK::BUILDER ENDPOINTS') if $DEBUG;
    builder {
        mount '/'         => CloudNS->to_app;
    };
}

main();
