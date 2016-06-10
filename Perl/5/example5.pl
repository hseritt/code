#!/usr/bin/env perl

use strict;
use warnings;

sub display_names {
    my @name_list = @_; # shift won't work here for arrays

    print "*****************************\n";

    foreach my $name (@name_list)
    {
        print $name . "\n";
    }
    print "\n";
}

sub get_count {
    my @name_list = @_;
    my $name = shift;
    my $count = 0;
    foreach my $n (@name_list)
    {
        if ($n eq $name)
        {
            $count++;
        }
    }
    return $count;
}

sub uniq {
    my @arr = @_;
    my @new_arr = ();

    foreach my $a (@arr)
    {
        if ( ! grep(/^$a$/, @new_arr) )
        {
            push(@new_arr, $a);
        }
    }
    return @new_arr;
}

my @names = ("Bob", "Jack", "Jill", "Mike", "John", "Jim", "Lisa");
display_names(@names);

my @name_list = @names;
display_names(@names);

print "Put Alfa at the front of the line ...\n";
unshift @name_list, "Alfa";
display_names(@name_list);

print "Remove Bob from the array ...\n";
my $index = 0;
$index++ until $name_list[$index] eq "Bob";
splice(@name_list, $index, 1);
display_names(@name_list);

print "Remove the first and last elements ...\n";
splice(@name_list, 0, 1);
pop(@name_list);
display_names(@name_list);

print "Clear the list ...\n";
@name_list = ();
display_names(@name_list);

print "Fill it with names again ...\n";
@name_list = @names;
display_names(@name_list);

print "The index of 'Mike' is ...\n";
$index = 0;
$index++ until $name_list[$index] eq "Mike";
print "The index is $index.\n";

print "Get the count of 'Mike' in name_list ...\n";
my $count = get_count(@name_list, "Mike");
print "The count is $count.\n";

print "Sort name_list by alphabetical order ...\n";
sort(@name_list);
display_names(@name_list);

print "Reverse sort the name_list ...\n";
my @reversed = reverse(@name_list);
display_names(@reversed);

print "Slice the 2nd through 4th values ...\n";
display_names(@name_list[1 .. 3]);

print "Inserting Charles at the 3rd position ...\n";
splice(@name_list, 2, 0, "Charles");
display_names(@name_list);

print "Now, remove Charles ...\n";
splice(@name_list, 2, 1);
display_names(@name_list);

print "Let's switch to numbers ...\n";
my @num_list = (5, 7, 9, 2, 4, 6);
display_names(@num_list);

print "How about some doubles ...\n";
my @doubles = map {$_ * 2} @num_list;
display_names(@doubles);

print "Let's do a set and call it a day ...\n";
my @fruits = ('banana', 'orange', 'apple', 'apple', 'grapes');
my @fruit_set = uniq(@fruits);
display_names(@fruit_set);
