#!/usr/bin/env perl

use strict;
use warnings;

require "people.pl";

our @people;

foreach my $person (@people)
{

    print "Person ...\n";
    my $years_left = 0;

    foreach (keys %{$person})
    {
        print "$_: ${$person}{$_}\n";

        if ($_ eq "age")
        {
            $years_left = 65 - ${$person}{$_} or die("Cannot convert <<age>> to integer.\n");
        }
    }

    printf("Years left: %d\n", $years_left);
    print "\n";
}