#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Make a program that prints each line that has two of the same non-whitespace characters next to each other. It should match lines that contain words such as
# Mississippi, Bamm-Bamm, or llama

while (<>) {
  chomp;
  print "$_\n" if (/(.)\1/);
}
