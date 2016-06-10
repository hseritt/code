#!/usr/bin/env perl

use strict;
use warnings;

sub do_something {
    print "I am doing something.\n";
}


sub do_something_with {
    my $num = shift;
    print "I am doing something with " . $num . "\n";
}

sub do_something_with_and_return {
    my $num = shift;
    return $num * 2;
}

sub do_something_with_option {
    my $num = shift;
    my $num2 = shift;

    if ($num2)
    {
        return $num * $num2;
    }
    else
    {
        return $num * 2;
    }

}

print "Calling do_something() ...\n";
do_something();

print "Calling do_something_with() ...\n";
do_something_with(7);

print "Calling do_something_with_and_return() ...\n";
print do_something_with_and_return(7) . "\n";

print "Calling do_something_with_option() ...\n";
print do_something_with_option(7) . "\n";
print do_something_with_option(7, 4) . "\n";