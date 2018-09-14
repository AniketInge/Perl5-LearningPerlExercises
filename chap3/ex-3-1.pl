#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Write a program that reads a list of strings on separate lines until end-of-file input and prints out the list in reverse order. If the input comes from the key-board
# you'll probably need to signal the end of input by pressing C-d on unix or C-z on windows.

my @lines = <STDIN>;
my @reversed = reverse @lines;

print @reversed;
