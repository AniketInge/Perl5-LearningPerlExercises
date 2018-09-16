while (<STDIN>) {
  chomp;
  if (/aniket|abhijit|shweta/) {
    print "\tPattern matched\n";
  }
  else {
    print "It doesn't match\n";
  }
}
