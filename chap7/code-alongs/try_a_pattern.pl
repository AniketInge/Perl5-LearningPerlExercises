#!/usr/bin/env perl

while(<STDIN>) {
  if (/$ARGV[0]/) {
   print "\tMatches\n";
  } else {
    print "\tDoesn't match\n";
  }
}
