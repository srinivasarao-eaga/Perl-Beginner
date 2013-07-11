#!/usr/bin/perl

my $k = 1000;
my $found = 0;
my $a;
my $b;

# We know that a + b + c = K (some constant, given). We also know that a^2 + b^2 = c^2
# Read that as 'a square + b square = c square'. Solving those two equations, we get
# 2k(a+b) = k^2 + 2ab. Now we run two loops to see for each 'a', is there a 'b' that
# suits the requirement. Not optimal, complexity in the range of O(K^2).

for($a = 1; $a < $k -2; $a++)
{
  my $flag = 0;
  for($b = $a + 1; $b < $k -1; $b++)
  {
    if((2 * $k * ($a + $b))  == (($k * $k) + (2 * $a * $b)) )
    {
      $flag = 1;
      last;
    }
  }
  if($flag)
  {
    # Once we find a and b suiting our requirement, we substitute back in the equations
    # to validate once
    
    if( ($a + $b < $k) && ($a * $a + $b * $b) == ($k - $a -$b) ** 2)
    {
      $found = 1;
      last;
    }
  }
}

if(! $found)
{
  print "There exists no such pythogorean triplet with given conditions \n";
  print "Either I'm wrong or you are wrong. I may be wrong \n";
  print "But can we start with you this time. Check you problem / input \n";
}
else
{
  $c = $k - $a -$b;
  $product = $a * $b * $c;
  
  print "The pythagorean triplet is (a, b, c) - ($a, $b, $c) \n";
  print "The product is $product \n";
}
