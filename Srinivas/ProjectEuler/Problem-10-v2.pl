#!/usr/bin/perl

my @numbers = (2,3);
my $sum = 0;

foreach (5..100000)
{
  if($_ % 2 != 0 && $_ % 3 != 0)
  {
    push @numbers, $_;
  }
}

my @primes;

for(my $i = 0; $i < sqrt(100000); $i++)
{
  if($numbers[$i] == 0)
  {
    next;
  }
  else
  {    
    for(my $j = $i + 1; $j < 100000; $j++)
    {
      if($numbers[$j] != 0 && $numbers[$j] % $numbers[$i] == 0)
      {
        $numbers[$j] = 0;
      }
    }
  }
}

foreach (@numbers)
{
  if($_ != 0 )
  {
    push @primes, $_;  
    $sum += $_;
    
  } 
}

my $primeLimit = 2000000;

for (my $counter = 100001; $counter < $primeLimit; $counter += 2)
{
  if($counter % 3 != 0 )
  {
    my $flag = 1;
    
    for($i = 0; $i < sqrt($counter); $i++)
    {
      if($counter % $primes[$i] == 0)
      {
        $flag = 0;
        last;
      }
    }
    
    if($flag)
    {
      $sum += $counter;
    }
  }
}

print "The sum of primes below 2000000 is - $sum \n";
