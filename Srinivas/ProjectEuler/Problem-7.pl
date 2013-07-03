#!/usr/bin/perl
 
# Program to find out Nth prime number

# We know that 2 and 3 are primes. So the 'primeCounter' is 2

my $primeCounter = 2;

# We want to test odd numbers only. So start the counter from 5

my $runningCounter = 5;
my $desiredPrime = 10001;

# We check the 'primality' of each number until our 'primeCounter reaches the 'desiredPrime'

while( $primeCounter < $desiredPrime)
{
  if($runningCounter % 3 != 0)
  {
    my $tempDivisor = 4;
    
    # This is an important point to note. Atleast one factor should be less than the square root of the number
    # 36's square root is 6. So you can't have both the factors greater than 6 right ?
    
    while ($tempDivisor <= sqrt($runningCounter) ) 
    {
     if( $runningCounter % $tempDivisor == 0 ) 
     {
       last;  # Equivalent of 'break' in C or Java
     }
     $tempDivisor++;
    }  
    if( $tempDivisor > sqrt($runningCounter) )
    {
      $primeCounter++;
      #print $runningCounter . " " ;
    }
  }   
  
  # By stepping 2 at a time (and starting from an odd number '5') we are skipping 'even' numbers
  # This reduces the running time by a good margin
  
  $runningCounter += 2;
}

# Nullifying the last increment
$runningCounter -= 2;

print "The ${desiredPrime}th largest prime is - $runningCounter";
