#!/usr/bin/env perl

use strict;
use diagnostics;
use utf8;
use warnings;
use v5.10;
sub greet {
  state $who = "";
  my ($greetings_to) = @_;

  if ($who ne "") {
    print "Hello $greetings_to, $who is also here!";
  } else {
    print "Hello $greetings_to, you're the first one here!";
    $who = $greetings_to;
  }
  print "\n";
}

greet('Fred');
greet('Barney');

