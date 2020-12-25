#!/usr/bin/perl
use warnings;
use strict;

use Poet::Script qw($conf);
use JSON;

if ($ARGV[0] eq 'LIST') {
    get_list();
}
elsif ($ARGV[0] eq 'HASH') {
    get_hash();
}
elsif ($ARGV[0] eq 'BOOLEAN') {
    get_boolean();
else {
    get();
}

exit(0);

# -----
sub get {
    my $key = $ARGV[0] or die "Need a key";

    my $value = $conf->get($key);

    return unless defined $value;

    # defined($value) or die "No value defined for $key";

    print "$value\n";
}

sub get_list {
    my $key = $ARGV[1] or die "Need a key";

    my $arr = $conf->get_list($key);

    return unless defined $arr;

    # defined($arr) or die "No value defined for $key";

    print "$_\n" for @$arr;
}

sub get_boolean {
    my $key = $ARGV[1] or die "Need a key";

    my $bool = $conf->getboolean($key); # 0 or 1

    print "$bool\n";
}

sub get_hash {
    my $key = $ARGV[1] or die "Need a key";

    my $hash = $conf->get_list($key);

    return unless defined $hash;

    # defined($hash) or die "No value defined for $key";

    print encode_json $hash;
}

