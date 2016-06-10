
package Vertebrate;
use Animal;
use strict;
use warnings;
our @ISA = qw(Animal);

sub new
{
    my $self = shift->SUPER::new(@_);

    $self->{has_backbone} = 1;
    return $self
}

sub display_info
{
    my ($self, $show_more) = @_;

    printf("A %s is a species of %s. Movement method: %s\n",
        $self->get_species(), ref $self, $self->moves());

    if ($show_more eq 1)
    {
        printf(
            "Skin: %s, Lays eggs? %s, Warm-blooded? %s, Has a backbone? %s\n",
                $self->{outer}, $self->{lay_eggs},
                $self->{is_warm_blooded}, $self->{has_backbone});
    }
}

1;