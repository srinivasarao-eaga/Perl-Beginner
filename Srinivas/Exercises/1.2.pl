#!/usr/bin/perl

 # 1.2 - Circumference of the circle, asking for user input
 
 my $radius = undef;  # Not defined, so zero by default
 
 chomp($radius = <STDIN>);
 
 my $circumference = 2 * 3.14 * $radius;
 
 print "The circumference of a circle with $radius units of radius is $circumference";
