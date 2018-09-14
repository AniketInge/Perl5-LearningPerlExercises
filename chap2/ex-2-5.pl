#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

print "Please enter a string: ";
chomp(my $str = <STDIN>);

print "Enter the number of times to repeat this string:";
chomp(my $times = <STDIN>);

print ($str x $times . "\n");

