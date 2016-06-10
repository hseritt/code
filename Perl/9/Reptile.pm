
package Reptile;
use strict;
use warnings;
use Vertebrate;
our @ISA = qw(Vertebrate);

sub new
{
    my $self = shift->SUPER::new(@_);

    $self->{outer} = "scaly";
    $self->{lay_eggs} = 1;
    $self->{is_warm_blooded} = 0;

    return $self
}

sub moves
{
    my ($self) = @_;
    return "slithers or walks";
}

1;