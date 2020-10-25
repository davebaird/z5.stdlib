#!/usr/bin/perl
use warnings;
use strict;

use Poet::Script qw($conf);

my $key = $ARGV[0] or die "Need a key";

my $value = $conf->get($key);

defined($value) or die "No value defined for $key";

print "$value\n";
