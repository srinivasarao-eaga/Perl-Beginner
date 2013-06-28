#!/usr/bin/perl

# 1.1 - Circumference of the circle

# Notice the first line of the program. Its called 'shebang' or 'hashbang'
# When 'shebang' is the first two bytes of the program, the program loader
# treats the rest of the line as 'Interpreter directive', meaning which 
# interpreter to use to run the rest of the program.


# The three datatypes available in Perl are scalars denoted by '$' sign, arrays 
# denoted by '@' sign and hashes denoted by '%' sign.
# Declaration of a variable needs 'my' keyword.
my $radius = 12.5;
 
my $circumference = 2 * 3.14 * $radius;
 
print "The circumference of a circle with $radius units of radius is $circumference";
