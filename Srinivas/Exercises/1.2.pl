#!/usr/bin/perl

# 1.2 - Circumference of the circle, asking for user input

# Unintialised variables in Perl have 'undef' value by default
# 'undef' will be zero in integer context, empty string in string context
# Not defined, so zero by default
my $radius = undef;  
 
# STDIN is the line input operator. Reads online at a time from the console
# chomp trims the newline at  the end
chomp($radius = <STDIN>); 
 
my $circumference = 2 * 3.14 * $radius;
 
# 'String Interpolation' happens is double quoted strings but not in single quoted ones 
print "The circumference of a circle with $radius units of radius is $circumference";
