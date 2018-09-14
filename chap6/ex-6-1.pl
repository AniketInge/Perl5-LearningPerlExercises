#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use diagnostics;

# Write a program that will ask the user for given name and report the corresponding family name. Use the names of people you know or(if you spend so much time on the computer that you don't know any actual people) use the following table:

# fred => flintstone, barney => rubble, wilma => flintstone

my %friends = (
               'Vikram' => 'Verma',
               'Ann' => 'Thandapani',
               'Shweta' => 'Puranik/Inge',
               'Aniket' => 'Inge',
               'Abhijit' => 'Inge',
               'Paras' => 'Charpe'
              );

print 'Please enter a first name: ';
chomp(my $friends_name = <STDIN>);
if (exists $friends{$friends_name}) {
  print $friends{$friends_name}, "\n";
} else {
  print "$friends_name doesn't exist in the database\n";
}
