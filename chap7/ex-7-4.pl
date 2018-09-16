#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Make a program that prints each line that has a word that is capitalized but not all capitalized. Does it match Fred but neither fred nor FRED?

while(<>) {
  chomp;
  print "$_\n" if /[A-Z][a-z]+/;
}
