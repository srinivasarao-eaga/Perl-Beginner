#! /usr/bin/perl

# Product of two numbers

my $firstNum;
my $secondNum;

chomp($firstNum = <STDIN>);
chomp($secondNum = <STDIN>);

print "Product of the numbers is ". $firstNum * $secondNum . "\n";
