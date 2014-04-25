use strict;
use warnings;

my %HoA;
while(<DATA>){
 next unless s/^(.*?):\s*//;
 $HoA{$1} = [split];
}

use Data::Dumper;

print Dumper \%HoA;

__DATA__
flintstones: fred barney wilma dino
jetsons: george jane elroy
simpons: homer marge bart

