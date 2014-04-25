use strict;
use warnings;
use Data::Dumper;

my %HoA;
while(my $line = <DATA>){
  my($who,$rest) = split /:\s*/,$line,2;
  my @fields = split ' ',$rest;
  $HoA{$who} = [@fields];
}


for my $family(keys %HoA){
 print "$family:";
 for my $i(0..$#{$HoA{$family}}){
   print " $i = $HoA{$family}[$i]";
 }
 print "\n";
}


__DATA__
flintstones: fred barney wilma dino
 jetsons: george jane elroy
simpons: homer marge bart








