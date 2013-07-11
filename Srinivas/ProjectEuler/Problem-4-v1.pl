#!/usr/bin/perl


$counter = 999 * 999;
$flag = 0;
$firstDivisor;

while($counter > 1)
{
  if(&isPalindrome($counter))
  {
    if($firstDivisor = &checkDivisors($counter))
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
  print "We found it. The product is $counter";
  print "The number resposible for this are $firstDivisor, $secondDivisor";
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
  for($i = 999; $i   
}
