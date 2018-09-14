#!/usr/bin/env perl

use strict;
use warnings;
use diagnostics;
use utf8;

# Write a program that reads a list of numbers (on separate lines) until end of file input and then prints for each number the corresponding person's name from the following list. (Hardcode this list of names into your program. That is, it should appear in your program's source code). For example, if the input numbers were 1, 2, 4, 2
# the output of the program would be fred, betty, dino and betty:
# fred betty barney dino wilma pebbles bamm-bamm

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);

chomp(my @numbers = <STDIN>);

foreach my $number (@numbers) {
  print $names[$number - 1] . "\n";
}
