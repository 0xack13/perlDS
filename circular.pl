use strict;
use warnings;
use Data::Dumper;

my $ll = [ {data=> 'x',
            next=> 1},
           {data=> 'y',
            next=> 0}];

my $data = 'z';



addItem($ll,\$data);

print Dumper($ll);



sub addItem
{
    my ($ll,$item) = @_;
    
    foreach(@{$ll})
    {
        $_->{next} = @{$ll}  if $_->{next} == 0;
    }
    
    $ll->[@{$ll}] = {data=>$$item,
                         next=>0};
    return;
}   
