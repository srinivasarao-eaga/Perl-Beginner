#! /usr/bin/perl

# 1.5 String repetition

my $inputString;
my $repeatCount;

chomp($inputString = <STDIN>);
chomp($repeatCount = <STDIN>);

if($repeatCount < 0 )
{
 print "Can't repeat the string $repeatCount times. Not atleast in Perl \n";
 exit;
 print "I'm dead Jim. You can't see me. Are we zombies? \n";
}

# Append a new line at the end of input string
# Most of the binary operators can use the shorthand notation with assignment

$inputString .= "\n";

# 'x' is a string repeatition operator
print $inputString x $repeatCount . "\n";
