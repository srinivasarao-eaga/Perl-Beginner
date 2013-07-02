#! /usr/bin/perl

# Printing names in the given order

# Normally we assign lists to arrays. Meaning a group of scarlars for a 'list', which is assigned to 
# an array. To save effort, Perl offers a variety of list constructs
# ("one", "two", "three", "four") is a valid list. Also you can use the 'qw' operator, which stands for
# 'quoted words'. qw/one two three/, qw{one two three}, qw[one two three] are all valid lists

my @names = qw /one two three four five/ ;

my @indexes;

chomp(@indexes = <STDIN>);

# Perl's foreach construct is similar to the one in Java. Very handy to iterate over lists and hashes
# However, foreach (@indexes) is also a valid construct. Here the latest value is stored in one of the
# many Perl's default variables '$_'

foreach $index (@indexes)
{
  # When you are accessing one of the values in array, you will have to use '$' as one value is a scalar
  # Just the difference between 'Apples' and 'Apple'
  
  print $names[$index];
}
