#!/usr/bin/env perl

use strict;
use warnings;

use Reptile;

my $info;

my $snake = new Reptile("sidewinder");
print $snake->display_info(1) . "\n\n";