$_ = "Yabba dabba do";
if (/abba/) {
  print "Matches";
}

# Prints Doesn't match
if (/ab ba/) {
  print "Matches - 1";
} else {
  print "Doesn't match";
}

# This is a mistake
$_ = "(Home sweet home)";
my $pattern = "(";
if (/$pattern/) { # Error: unmatched ( in regex; marked by <-- HERE in m/( <-- HERE / at (eva..) line
  print "It matched\n";
}


# . matches any single character except a newline. It's the first regex meta character we show:

$_ = "yabba dabba doo";
if (/ab.a/) {
  print "Matches - single character";
}

# escape . character with \. or \N

$_ = "yabba dabba doo.";
if (/doo\./) {
  print "matched . character";
}
if (/doo\N/) {
  print "matched .(N) character";
}

# Quantifiers or repeaters
# the ? character is 0 or 1 character match
$_ = "Bamm-Bamm";
if (/Bamm-?Bamm/) {
  print "matched optional character -";
}

# the * character matches 0 or more characters
$_ = "Bamm----Bamm";
if (/Bamm-*Bamm/) {
  print "matched optional character - multiple times";
}
