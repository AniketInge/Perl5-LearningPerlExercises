#!/usr/bin/env perl

use strict;
use diagnostics;
use utf8;
use warnings;
use v5.10;

sub greet {
  state @who;
  my ($greetings_to) = @_;

  if (@who) {
    print "Hello $greetings_to, I've seen @who!";
  } else {
    print "Hello $greetings_to, you're the first one here!";
  }
  push @who, $greetings_to;
  print "\n";
}

greet('Fred');
greet('Barney');
greet('Betty');
greet('Wilma');
