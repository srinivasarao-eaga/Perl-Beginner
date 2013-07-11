#!/usr/bin/perl
my $input=13195;
  #print $input;

my @factors;

for(2..$input-1){
 if(($input%$_)==0){
  print "Factor :$_\n"; 
  push @factors,$_;
 }
  }
  print "**************************\n";

  print "fact : $factors \n";
  my $i,$j;
  
  for (0..$factors){
  $i=$_;
 print "outer loop : $i \n";
     for(1..$#factors){
     print "inner loop: $_\n";
      if($factors[$_]%$factors[$i]==0){
      print "multipled $factors[$_] by $factors[$i] \n";
# pop $#factors,
      }
       }
       
  }

