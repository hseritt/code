#!/usr/bin/env perl

use strict;
use warnings;
use File::Slurp;

my $outfile = "out.txt";

my $text = "aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n";

print "Writing to outfile ...\n";
open(my $fh, '>', $outfile) or die ("Could not open file: $outfile");
print $fh $text;
close $fh;

print "Reading from outfile ...\n";
open($fh, '<:encoding(UTF-8)', $outfile) or die ("Could not open file: $outfile");
while (my $row = <$fh>)
{
    chomp $row;
    print "$row\n";
}
close $fh;

print "Adding more text to outfile ...\n";
my $more_text = "alsdkjfalfdkj\nalsdfjldfkj\n";
open($fh, '>>', $outfile) or die ("Could not open file: $outfile");
print $fh $more_text;
close $fh;

print "Opening outfile to read the entire text ...\n";
my $out = read_file($outfile);
print $out;
