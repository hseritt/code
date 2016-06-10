#!/usr/bin/env perl

use strict;
use warnings;

=begin comment
/* Declare these variables: name, age, temp, skies. */
/* Set the value for them as the ordinal cli arguments respectively. */
=cut

my $name = $ARGV[0];
my $age = $ARGV[1];
my $temp = $ARGV[2];
my $skies = $ARGV[3];

# Use variable name to get input from "i! What is your name?"
if (!$name)
{
    print "Hi! What is your name? ";
    $name = <STDIN>;
    chomp $name;
}

# Use variable age to get input from "ow old are you?"
if (!$age)
{
    print "How old are you? ";
    $age = <STDIN>;
    chomp $age;
}
# Use variable temp to get input for "hat is the temperature where
# you are?"
if (!$temp)
{
    print "What is the temperature where you are? ";
    $temp = <STDIN>;
    chomp $temp;
}
# Use variable skies to get input for "hat are the skies like?
# Clear? Cloudy? Rainy?"
if (!$skies)
{
    print "What are the skies like?";
    $skies = <STDIN>;
    chomp $skies;
}


# Print a newline
print "\n";

# Print out "ell, hello <<name>>. It is nice to meet you."
print "Well, hello $name. It is nice to meet you.\n\n";

# Write an if/elsif/else structure that will test 'age'. If the age is
# under 21, print "y ... you are a young whippersnapper, aren't you?"
# If the age is under 31 print "ou still have your life ahead of you, young
# man" If the age is under 61 print "on't worry. You're still younger
# than you think."Else, print "ou're getting on up there aren't you?"
if ($age <= 20)
{
    print "Why ... you are a young whippersnapper, aren't you?\n";
}
elsif ($age <= 30)
{
    print "You still have your life ahead of you.\n";
}
elsif ($age <= 60)
{
    print "Don't worry. You're not as old as you think.\n";
}
else
{
    print "You're getting on up there aren't you?\n";
}

# Print a newline */
print "\n";

# Print "he weather is still cool here despite it being the summer." */
print "The weather is still cool here despite it being the summer.";

# Print a newline */
print "\n";

# Write an if/elsif/else structure to determine which temp string is
# assigned based on temperature like so:
# temp under 41: cold
# temp under 66: pleasant
# temp under 81: warm
# else? hot */

my $temp_str;

if ($temp <= 40)
{
    $temp_str = "cold";
}
elsif ($temp <=65)
{
    $temp_str = "pleasant";
}
elsif ($temp <= 80)
{
    $temp_str = "warm";
}
else
{
    $temp_str = "hot";
}


# Clean skies variable to be set to lower case, have all whitespace
# stripped from both right and left. */
my $val_skies = lc $skies;
$val_skies =~ s/^\s+|\s+$//g;

# If the skies are clear and temp_str is pleasant or warm, print
# "Sounds nice there." */
if ($val_skies eq "clear" &&
    ($temp_str eq "pleasant" || $temp_str eq "warm"))
{
    print "Sounds nice there.\n";
}
# If the skies are clear and temp_str is cold, print "Sounds good but
# probably not a good day to go to the beach." */
elsif ($val_skies eq "clear" and $temp_str eq "cold")
{
    print "Sounds good but probably not a good day to go to the beach.\n";

}
# If the skies are clear and temp_str is hot, print "Sounds like a nice day
# to go to the beach." */
elsif ($val_skies eq "clear" and $temp_str eq "hot")
{
    print "Sounds like a nice day to go to the beach.\n";
}
# If the skies are cloudy and temp_str is cold or pleasant, print "Should be
# better but doesn't sound too bad." */
elsif ($val_skies eq "cloudy" and
    ($temp_str eq "cold" or $temp_str eq "pleasant"))
{
    print "Should be better but doesn't sound too bad.\n";
}
# If the skies are cloudy and temp_str is warm, print "Sounds a little muggy." */
elsif ($val_skies eq "cloudy" and $temp_str eq "warm")
{
    print "Sounds a little muggy.\n";
}

# If the skies are cloudy and temp_str is hot, print "Sounds very
# uncomfortable." */
elsif ($val_skies eq "cloudy" and $temp_str eq "hot")
{
    print "Sounds very uncomfortable.\n";
}
# If the skies are rainy and temp_str is cold, print "Sounds like a bad day." */
elsif ($val_skies eq "rainy" and $temp_str eq "cold")
{
    print "Sounds like a bad day.\n";
}
# If the skies are rainy and temp_str is pleasant or warm, print "You guys
# probably need the rain." */
elsif ($val_skies eq "rainy" and
    ($temp_str eq "pleasant" or $temp_str eq "warm"))
{
    print "You guys probably need the rain.\n";
}
# If the skies are rainy and temp_str is hot, print "Sounds like you are in
# a jungle." */
elsif ($val_skies eq "rainy" and $temp_str eq "hot")
{
    print "Sounds like you are in a jungle.\n";
}
# Else, print "on't know what to say." */
else
{
    print "Don't know what to say.\n";
}

# If skies are not rainy, print "t least it's dry there." */
if ($val_skies ne "rainy")
{
    print "At least it's dry there.\n";
}
# If skies are not cloudy or clear, print "emember, showers bring
# May flowers." */
if (!($val_skies eq "cloudy" or $val_skies eq "clear"))
{
    print "Remember, showers bring May flowers.\n";
}
