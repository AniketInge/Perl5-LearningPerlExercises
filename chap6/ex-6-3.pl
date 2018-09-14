#!/usr/bin/env perl

use diagnostics;
use utf8;
use strict;
use warnings;

# Write a program to print all of the keys and values in %ENV. Print the results in two columns in ASCIIBetical order. For extra credit, arrange the output to
# vertically align both columns. The length function can help you figure out how wide to make the first column. Once you get the program running, try setting some
# new environment variables and ensure that they show up in your output.

sub max {
  my $max_length = 0;
  foreach(@_) {
      $max_length = length($_) if length($_) > $max_length;
  }
  return $max_length;
}

my $print_length = max keys %ENV;
while (my ($key, $value) = each %ENV) {
  printf "%*s => $value\n", -$print_length, $key;
}
