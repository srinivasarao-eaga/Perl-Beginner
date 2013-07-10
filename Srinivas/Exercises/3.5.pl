#!/usr/bin/perl
use 5.010;

# The above use statement is a must. 'state' concept is not available below this version

&greet("Leela");
&greet("Lilly");
&greet("Laila");
&greet("Lovely");


sub greet
{

 # This is similar to 'static' in C or Java !!
  state @previousVisitors;
    
  if(@previousVisitors == 0)
  {
    print "Hi $_[0] , you are the first one here \n";  
  }
  else
  {
    print "Hi $_[0] , we also have @previousVisitors \n";  
  } 
  push @previousVisitors, $_[0];
}
