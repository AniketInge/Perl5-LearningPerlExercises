#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

sub total {
  my $sum = 0;
  foreach(@_) {
    $sum += $_;
  }
  return $sum;
}

my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

# Note that using <STDIN> in list context like that will wait for you to end input in whatever way is appropriate for your system C-d(on Linux)
