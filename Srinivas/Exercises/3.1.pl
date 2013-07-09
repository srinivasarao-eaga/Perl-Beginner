#!/usr/bin/perl

my @numbers = <STDIN>;
chomp(@numbers);

# &sum(@numbers) is the function call
print "The sum of @numbers is - " . &sum(@numbers);

# This is a sub routine. The arguments are passed in an 
# array called @_ underneath

sub sum
{
  my $sum = 0;
  
  foreach (@_)
  {
    $sum += $_ ;   # $_ is the default variable used if not specified
  }
  $sum;            # Perl returns the last expresssion by default
}
