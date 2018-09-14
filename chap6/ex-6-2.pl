#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Write a program that reads a series of words, one word per line, until end of input. Then prints a summary of how many times each word was seen.
# So if the input were fred, barney, fred, dino, wilma, fred all on separate lines, the output would tell us that fred was seen 3 times and so on
# Extra credit if the words are sorted at final input

chomp(my @words = <STDIN>);
my %hash;
foreach my $word (@words) {
  $hash{$word} += 1;
}

foreach my $word (sort keys %hash) {
  print "$word appears $hash{$word} times\n";
}

