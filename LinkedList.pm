package LinkedList;

use strict;

my $HEAD_NODE = undef;  # use a global var to get the head node

sub new {
  my $this = shift;
  my $class = ref($this) || $this;
  my $self = {};

  $self->{_ID}   = shift || "Id";
  $self->{_NAME} = shift || "Default";

  $HEAD_NODE = $self unless defined $HEAD_NODE;

  $self->{_NEXT} = $HEAD_NODE;

  bless $self, $class;
}

sub name {
  my $self = shift;
  $self->{_NAME} = shift if @_;
  return $self->{_NAME};
}

sub id {
  my $self = shift;
  $self->{_ID} = shift if @_;
  return $self->{_ID};
}

# this really should handle references to objects, and not 
# the object itself...

sub add_node {
  my $self = shift;
  my $node_to_add = shift;

  $self->{_NEXT} = $node_to_add;
}

# this really should handle references to objects, and not 
# the object itself...

sub next {
  my $self = shift;
  return $self->{_NEXT};
}

# may not be necessary

DESTROY {
  my $self = shift;
  $self->{_NEXT} = undef;
}

1;
