#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

use File::Slurp qw( read_file );

my $dict = '/usr/share/dict/words';
my @words = map s/\s+\z//r, grep 3 < length, read_file $dict;

my $n = @words;

for (1 .. 10) {
    say join('-', sort @words[rand($n), rand($n)]);
}
