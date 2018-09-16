#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Extra credit exercise: write a program that prints out any line that mentions both wilma and fred

while (<>) {
  chomp;
  print "$_\n" if (/wilma/ and /fred/);
}
