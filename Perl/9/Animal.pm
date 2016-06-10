
package Animal;
use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {
        species => shift,
    };

    bless $self, $class;
    return $self;
}

sub get_species
{
    my ($self) = @_;
    return $self->{species};
}

1;