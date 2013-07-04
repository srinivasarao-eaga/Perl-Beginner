#!/usr/bin/perl
 
$original = 600851475143;

print "The largest prime factor for $original is - ". &FirstCut . "\n"; 
print "The largest prime factor for $original is - ". &Optimised . "\n";

sub FirstCut
{
  my $number = $original;

  while(1)
  {
   my $flag = 1;
   my $counter = 2;
  
  # The strategy here is to repeatedly divide the number with it smallest factors
  # When we realise that the number can be no more divisible, then thats our highest prime number
  # Eg. Let n = 13195. Its not divisible by 2,3,4. Its divisible by 5. So set n = n/5 
  #         n = 2639 . Its not divisible by 2,3,4,5,6. Its divisible by 7. So set n = n/7;
  #         n = 377  . Its not divisible by 2,3,4,5,6,7,8,9,10,11,12. So set n = n/13;
  #         n = 29   . Its not divisible by 2,3,4, .. until sqrt(n). So its a prime and our answer
  
   while( $counter < sqrt($number) )
    {
     if( $number % $counter == 0 )
     {
        $number /= $counter;
        $flag = 0;
     }
      $counter++;
   }
  
    if($flag)
    {
     last;
    }
  }
  $number;
}

sub Optimised
{
  my $number = $original;

  while(1)
  {
   my $flag = 1;
   my $counter = 2;
  
  # This is the optimisation to the above approach. If its not divisible by 2, there is no need
  # to check with 4,6,8 etc. So seperate out 2, and then check divisibility with odd numbers thereafter
  
   if( $number % 2 ==0 )
   {
     $number /= 2;
   }
   else
   {
      $counter = 3;
      while( $counter < sqrt($number) )
      {
       if( $number % $counter == 0 )
       {
        $number /= $counter;
        $flag = 0;
       }
        $counter += 2;
      }
   }
  
    if($flag)
    {
     last;
    }
  }
  $number;
}
