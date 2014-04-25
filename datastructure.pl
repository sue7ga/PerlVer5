use strict; 
use warnings;
use Data::Dumper;

my %HoH;
while(<DATA>){
 next unless s/^(.*?):\s*//;
 my $who = $1;
 for my $field(split){
  my($key,$value) = split/=/,$field;
  $HoH{$who}{$key} = $value;
 }
}

print Dumper \%HoH;

__DATA__
flintstones: husband=fred pal=barney wife=wilma pet=dino
 unkosuesue: tensai=haccker bye=tensai tanaka=taro jinsei=kaketa


