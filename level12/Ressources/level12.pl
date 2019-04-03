#!/usr/bin/env perl
# localhost:4646
use CGI qw{param};
print "Content-type: text/html\n\n";

# modify first argument, then for every match of first argument inside /tmp/xd, compare to second arg
sub t {
  $nn = $_[1];
  $xx = $_[0]; # get first argument
  $xx =~ tr/a-z/A-Z/; # capitalize every letter of first arg
  $xx =~ s/\s.*//; # delete anything following a whitespace character of first arg
  @output = `egrep "^$xx" /tmp/xd 2>&1`; # find match of first arg inside /tmp/xd, keep errors in stdin
  foreach $line (@output) { # for each match
      ($f, $s) = split(/:/, $line); # get match 
      if($s =~ $nn) { # if match equals second argument
          return 1; # return true
      }
  }
  return 0;
}

#print .. if first arg is true
sub n {
  if($_[0] == 1) {
      print("..");
  } else {
      print(".");
  }    
}

#get parram x and y, not sure how to give those param to the script
n(t(param("x"), param("y")));
