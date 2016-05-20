use strict;
use Scalar::Util qw(reftype);

use warnings;
use Data::Dumper;

my $ll = [ {data=> 'x',
            next=> 1},
           {data=> 'y',
            next=> 0}];

my $data1 = 'z';
my $data2 = 'w';
addItem($ll,\$data1);
addItem($ll,\$data2);
#print Dumper($ll);

sub addItem
{
    my ($ll,$item) = @_;
    #print "First $ll -> $$item"; 

    #foreach(@{$ll})
    #{
    #    print "\n the value is: $_->{data} and @{$ll}";
    #}
    foreach(@{$ll})
    {
        print "$_->{next}   --  $_->{data} --" .  ref({$ll}) . " \n";
        $_->{next} = @{$ll}  if $_->{next} == 0;
        #print "$_->{next}";
    }
   
    #print "\n\nprinting brack value:$ll \n @{$ll} \n\n  [@{$ll}]\n\n";
    $ll->[@{$ll}] = {data=>$$item,
                         next=>0};
    Dumper($ll);
    return;
}   
