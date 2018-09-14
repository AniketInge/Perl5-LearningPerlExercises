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

sub average {
  my $number_of_args = @_; # List in Scalar context
  my $grand_total = total(@_);
  return ($grand_total / $number_of_args);
}

sub above_average {
  my @numbers_above_average;
  my $avg = average(@_);
  foreach(@_) {
    if ($_ > $avg) {
      push @numbers_above_average, $_;
    }
  }
  return @numbers_above_average;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10) \n";

my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100) \n";
