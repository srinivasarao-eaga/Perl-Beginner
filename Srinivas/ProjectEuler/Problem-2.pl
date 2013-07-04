#!/usr/bin/perl

print "Sum of even fibonacci number less than 4 million is - ". &Approach1 . "\n";
print "Sum of even fibonacci number less than 4 million is - ". &Approach2;

sub Approach1
{
 # You can declare and initialise multiple varibles like this
  my ($p, $q, $r, $last, $sum) = (1,1,2,4000000,0);

  # So, here we start with three fibonacci numbers 1, 1, 2. Just with a little bit of observation 
  # we notice that every third fibonacci number is even. 1,1,2,3,5,8,13,21,34,55 ...
  # So we move three numbers at a time and add the third one to the sum
  
  while ($r < $last)
  {
    $sum = $sum + $r;
    $p = $q + $r;
    $q = $r + $p;
    $r = $p + $q;
  }
  $sum;   # Perl returns the result of last expression in a function
}

sub Approach2
{
 
 # The above solution iterates over all the fibonacci numbers to find the sum of even ones
 # Upon examining the even fibonacci sequence, 2,8,34,144 .., its clear that every even fibonacci
 # number can be expressed as 4 * f(n-1) + f(n-2), where f(n) is a even fibonacci sequence
 
  my($m, $n, $last, $sum) = (2,8, 4000000, 2);
  
  while ($n < $last)
  {
    $sum = $sum + $n;
    
  # The below in-place swap moves the numbers one step ahead in the even sequence
  # Eg. Say, m, n are 2, 8. After this operation, m,n will be 8, 34 (4*8 +2)
    ($m, $n) = ($n, (4 * $n) + $m);
  }
  $sum;
}
