#!/usr/bin/perl

my @numbers = (20, 22, 1..10);
my @nosAboveAvg = &aboveAverage(@numbers);

# The global '$"' variable is the delimiter value used by various 
# functions and operators. Array interpolation in strings is one example
# Here we override the default value (space) to have a comma

$" = ' , ';   
print "The numbers above average are - @nosAboveAvg";
$" = ' ';


sub aboveAverage
{
  my @result;
  my $average = &computeAverage(@_);
  
  foreach (@_)
  {
    if($_ > $average) 
    {
      # push adds an element to the end of an array, pop does the reverse
      # shift and unshift do the same from the start of the array
      push @result, $_ ;  
    }
  }
  @result;
}

sub computeAverage
{
  my $average;
  foreach (@_)
  {
    $average += $_;  
  }
  $average = $average / @_ ;  # In scalar context @_ returns the size of an array
}
