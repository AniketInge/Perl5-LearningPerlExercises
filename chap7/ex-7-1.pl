#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Make a program that prints each line of its input that mentions fred. (It shouldn't do anything for the other lines of input)
# does it match if your input string is Fred, frederick or Alfred? Make a small text file with a few lines mentioning "fred flintstone" and his friends,
# then use that file as input to this program and the ones later in this section

while(<>) {
  chomp;
  print "$_\n" if /fred/;
}
