#!/usr/bin/perl

my @numbers = (2,3);
my $sum = 0;

# This is a different and optimised approach compared to Problem-10-v1.pl
# Here we compute the sum of primes in two steps
# Step 1:  find out the primes below 100000 (a small percentage of actual target) using 
#          'Sieve of Eratosthenes' method. Here we take all the numbers from 2 to N (100000), and 
#           start dividing all the numbers with the lowest number, and then with next lowest
#           number and so on. If its divisible by any of them, we make it zero (we don't bother 
#           about it anymore)

# The below loop is an optimisation to the 'Sieve' method. With the below step we perform the
# Sieve method only on 33% of the population ( removing all the 2 and 3 multiples)

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

# Now all the non zero numbers in @numbers are primes, because they
# are not divisible by any of the smaller ones

foreach (@numbers)
{
  if($_ != 0 )
  {
    push @primes, $_;  
    $sum += $_;
    
  } 
}

# Step 2 :
# After finding the primes till 100000, we can find the primes between 100001 to 2000000 
# by 'trial division' method. This is same as version1 of this problem, except for one
# important optimisation instead of dividing a number N with all the numbers between 2 to sqrt(N) 
# (for primality check), we divide with only primes below sqrt(N).  Obviously the outer iteration is 
# only on odd numbers between 2 to N (with an additional check with 3 divisibility to 
# skip another 16% numbers)

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
