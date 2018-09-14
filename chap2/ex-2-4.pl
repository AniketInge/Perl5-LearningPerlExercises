#!/usr/bin/env perl

use warnings;
use strict;
use utf8;
use diagnostics;

print "Please enter first number: ";
chomp(my $first_number = <STDIN>);
print "Please enter second number: ";
chomp(my $second_number = <STDIN>);

my $product = $first_number * $second_number;
print $product . "\n";

