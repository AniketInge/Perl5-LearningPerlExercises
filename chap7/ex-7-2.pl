#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

while(<>) {
  chomp;
  print "$_\n" if /[fF]red/;
}
