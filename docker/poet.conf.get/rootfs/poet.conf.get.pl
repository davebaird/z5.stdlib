#!/usr/bin/perl
use warnings;
use strict;

use Poet::Script qw($conf);
use JSON;

if ($ARGV[0] eq 'LIST') {
    get_list($ARGV[1]);
}
elsif ($ARGV[0] eq 'HASH') {
    get_hash($ARGV[1]);
}
elsif ($ARGV[0] eq 'BOOLEAN') {
    get_boolean($ARGV[1]);
}
else {
    get($ARGV[0]);
}

exit(0);

# -----
sub get {
    my $key = $_[0] or die "Need a key for get()";

    my $value = $conf->get($key);

    return unless defined $value;

    print "$value\n";
}

sub get_list {
   my $key = $_[0] or die "Need a key for get_list()";

    my $arr = $conf->get_list($key);

    return unless defined $arr;

    print "$_\n" for @$arr;
}

sub get_boolean {
    my $key = $_[0] or die "Need a key for get_boolean()";

    my $bool = $conf->getboolean($key); # 0 or 1

    print "$bool\n";
}

sub get_hash {
    my $key = $_[0] or die "Need a key for get_hash()";

    my $hash = $conf->get_list($key);

    # return unless defined $hash;

    print encode_json $hash; # will print the string 'null' if fed undef
}

