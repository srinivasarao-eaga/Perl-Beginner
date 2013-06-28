#! /usr/bin/perl

my $radius;
chomp($radius = <STDIN>);

# The conditional statement 'if' is similar to the one in 'C' Language.
# But the catch here is, there are no boolean types in Perl. So, the guidelines 
# are, zero and empty strings are false, and everything else is true. The only
# exception here is string '0' is also false (as this can be treated as 0 in integer
# context, which is also false

# Another difference to note is curly braces are must here

if($radius < 0)
{
   print "Can't compute circumference of a circle with negative radius, atleast with geometry known to mankind. Try a positive number!! \n";
}
else
{
   # The '.' (dot) operator can be used for string concatenation.
   print "Circumference is " . 2 * 3.14 * $radius . "\n";
}
