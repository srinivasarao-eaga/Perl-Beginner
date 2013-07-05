#! /usr/bin/perl

$primeCounter = 2;
$runningCounter = 5;
$primeLimit = 2000000;
$sum = 5;

# See Problem-7 for detailed explanation of the algo. 

while( $runningCounter < $primeLimit)
{
  if($runningCounter % 3 != 0)
    {
      $tempDivisor = 4;

      while ($tempDivisor <= sqrt($runningCounter) )
      {
         if( $runningCounter % $tempDivisor == 0 )
         {
           last;
          }
         $tempDivisor++;
       }
      if($tempDivisor > sqrt($runningCounter) )
      {
         $sum = $sum + $runningCounter;
      }
    }

   $runningCounter += 2;
 }
print "The sum of primes below 2000000 is - $sum \n";
