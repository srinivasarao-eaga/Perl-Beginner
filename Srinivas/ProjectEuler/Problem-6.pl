#!/usr/bin/perl
 
$n = 100;

# Straight formulas - O(1) complexity
# Using loops here is like eating upma with chopsticks !!

$sumOfSquares = ($n * ($n+1) * (2*$n +1) / 6);
$squareOfSum  = ($n * ($n+1) / 2) ** 2;

$difference = $squareOfSum - $sumOfSquares ;

print "The difference between sum of squares and square of sum is : $difference";
