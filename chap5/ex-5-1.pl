#!/usr/bin/env perl

use warnings;
use strict;
use utf8;
use diagnostics;

# Write a program like cat that reverses the order of the output lines
# If you run your's as ./tac fred barney betty, the output should be all of file betty from last line to first, then barney, and then fred. also from last line to first.

foreach (reverse @ARGV) {
    my $fh;
    if (! open $fh, '<', $_) {
        warn "Cannot open $_, $!\n";
        next;
    }
    my @rev_data = reverse <$fh>;
    print @rev_data;
    close $fh;
}
