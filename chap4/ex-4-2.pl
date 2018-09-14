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

my $total_sum = total(1..1000);
print "The total of 1..1000 is $total_sum \n"
