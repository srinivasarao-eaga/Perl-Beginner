#!/usr/bin/perl

# We know that palindromes are not all that rare. For eg, the product of highest 3 digit
# numbers is 998001. So we have 997799, 996699, 995599 and so on as palindromes. Based on this
# we walk backwards from '998001', check if it is a palindrome, if so, check if it has two 
# '3 digit factors'. 

$counter = 999 * 999;
$flag = 0;
$firstDivisor;

# Walk backwards from maximum product till 10000. Anything less will not be a product of 3 two 
# digit numbers

while($counter > 10000)
{
  # Check if the number in question is a palindrome
  if(&isPalindrome($counter))
  {
  # if it is a palindrome, check if it has got two three-digit factors
  $firstDivisor = &checkDivisors($counter);
    if($firstDivisor)
    {
      $flag = 1;
      last;
    }
  }
  
  $counter--;
}

if($flag)
{
  $secondDivisor = $counter / $firstDivisor;
  print "We found it. The product is $counter \n";
  print "The numbers we hunted for are:  ($firstDivisor, $secondDivisor)";
}
else
{
  print "Something went wrong";
}

sub isPalindrome
{
  @chars = split("", $_[0]);
  
  if(@chars == 0)
  {
    return -1;
  }
  
  $mid = @chars / 2; 
  $end = @chars;

  for($start = 0; $start < $mid; $start++ , $end--)
  {
    if($chars[$start] ne $chars[$end -1])
    {
      return 0;  
    }
  }
  
  return 1;
}

sub checkDivisors
{
  my $input = $_[0];
  for(my $i = 999; $i > 99 ; $i--)
  {
    if( $input % $i == 0 )
    {
      my $len = scalar(split("", $input / $i));
      if($len == 3)
      {
        return $input / $i ;
      }
      elsif($len < 3)
      {
        return 0;
      }
    }
  }
  return 0;
}
