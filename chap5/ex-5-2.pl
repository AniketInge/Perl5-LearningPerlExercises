#!/usr/bin/env perl

use diagnostics;
use strict;
use warnings;
use utf8;

# Write a program that asks the user to enter a list of strings on separate lines and then print each line on a right justified 20 column
# print a ruler as a debugging aid

my $ruler = "1234567890" x 4;

print "Enter a list of strings (hit C-d to end input): \n";
my @strings = <STDIN>;
print $ruler, "\n";
foreach(@strings) {
    printf "%21s\n", $_;
}
