#!/usr/bin/perl

use strict;
use LinkedList;

my $first_node = LinkedList->new( 1, "data" );

my $second_node = LinkedList->new( 2, "more data");

my $third_node = LinkedList->new(3, "even more data");


$first_node->add_node( $second_node );
$second_node->add_node( $third_node );


my $node = $first_node;

for ( my $i = 0; $i < 100; $i++ ) {
  print $node->id." ".$node->name."\n";
  $i++;
  $node = $node->next;
}
