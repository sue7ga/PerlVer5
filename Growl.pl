use Growl::Any;
use Encode;
use Encode::Locale;
use utf8;

my $growl = Growl::Any->new;
   $growl->register('バーン',['オラオラ','ありあり']);

local $| = 1;
print encode('console_out','もしかしてオラオラですかー！？[yes]');

my $yes = <>;

for(1..50){
 $growl->notify(
  'オラオラ',  
  'オラオラ'x 3,  
  'オラオラ'x 9,  
  'http://bit.ly/oraora',
 ); 
}
