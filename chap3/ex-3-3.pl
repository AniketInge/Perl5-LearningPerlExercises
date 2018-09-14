#!/usr/bin/env perl

use strict;
use warnings;
use diagnostics;
use utf8;

# Write a program that reads a list of strings ( on separate lines ) until end of file input. Then it should print the strings in code-point order. That is if you were
# to enter the strings fred, barney, wilma, betty, the output should show barney, betty, fred, wilma. Are tall of the strings on the same line in the output or different lines?
# Could you make the output appear in either styles?

my @strings = <STDIN>;
# chomp @strings; #Uncomment this to make output appear on the same line :-)

@strings = sort @strings;

print @strings;
