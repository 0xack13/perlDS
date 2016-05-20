use strict;
use warnings;

#build a cyclic list of hashes
my $root = {value => 0, next => undef};
my $last = $root;

for (my $i=1; $i<5; $i++)
{
  my $node = { value=>$i, next => undef};
  $last->{next} = $node;
  $last = $node;
}

$last->{next} = $root;

#cycle:

my $node = $root;

for ( my $j=0; $j<10; $j++ )
{
  print $node->{value}, "\n";
  $node = $node->{next};
}
