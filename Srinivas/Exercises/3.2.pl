#!/usr/bin/perl

my @numbers = (20, 22, 1..10);

print "The numbers above average are - ";
print &aboveAverage(@numbers);


sub aboveAverage
{
  my @result;
  my $average = &computeAverage(@_);
  
  foreach (@_)
  {
    if($_ > $average) 
    {
      push @result, $_ ;  # push adds an element to the end of an array, pop does the reverse
                     
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
