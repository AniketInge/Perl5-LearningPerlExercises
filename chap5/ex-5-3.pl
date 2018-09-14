#!/usr/bin/env perl

use diagnostics;
use strict;
use warnings;
use utf8;

# Write a program that asks the user to enter a list of strings on separate lines and then print each line on a right justified 20 column
# print a ruler as a debugging aid

# Ruler 
my $ruler = "1234567890" x 4;

# Width for columns
print "Enter a width for columns: ";
my $width = int(<STDIN>);
$width = $width+1;

# Get list of strings
print "Enter a list of strings (hit C-d to end input): \n";
my @strings = <STDIN>;

# print the ruler + the strings, right justified
print $ruler, "\n";
foreach(@strings) {
    printf "%*s\n", $width, $_;
}
