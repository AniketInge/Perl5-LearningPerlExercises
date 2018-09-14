#!/usr/bin/env perl

use strict;
use warnings;
use diagnostics;
use utf8;

print "Please enter radius: ";
chomp(my $radius = <STDIN>);
my $circumference = 2 * 3.141592654 * $radius;
print "$circumference \n";
