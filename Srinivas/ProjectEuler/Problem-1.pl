#! /usr/bin/perl

print "The sum of all multiples of 3 or 5 below 1000 is - ". &Approach1 . "\n";
print "The sum of all multiples of 3 or 5 below 1000 is - ". &Approach2;

# This one iterates through all the numbers and performs the requried checks
# O(n) complexity

#This is how we write funtions in Perl 
sub Approach1
{
  my $counter = 1;
  my $sum = 0;

  while ( $counter < 1000 )
  {
   if( $counter % 3 == 0 || $counter % 5 == 0)
   {
     $sum += $counter;  
   }
   $counter++;
  }
  # By default Perl returns the value of a last expression in the function
  $sum;   
}

# O(1) complexity. This method doesn't iterate through numbers.
# Uses mathematical formulas instead.
sub Approach2
{
  # This is how we make function calls in Perl
  &multiples(3, 999) + &multiples(5, 999) - &multiples(15, 999);  
}

sub multiples
{
 # Eg. Multiples of 3 are 3, 6, 9, 12 ... 999 (i.e < 1000)
 # So, the sum of 3 multiples is basically 3 * (1 + 2 + 3 .... + 333)
 
 my $k = $_[0];
 
 #The below 'int' conversion is important. We want integer computation here
 my $last = int($_[1] / $_[0]); 
 
 $k * ( $last * ($last + 1) / 2 );  # Eg. 3 * n(n+1) / 2
}
