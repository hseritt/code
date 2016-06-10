#!/usr/bin/env perl

use strict;
use warnings;

# Define function called show_usage with option as its parameter. */
sub show_usage
{
    my $option = shift;
    # Print 'Unknown option "<<option>>". Acceptable: list or line' */
    print "Unknown option \"$option\". Acceptable: list or line.\n";

    # Exit program with status of 0. */
    exit(0);

}


# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value. */
my @allowable_options = ("list", "line");

# Declare var called option. Set default as 'list'. */
my $option = "list";

# Using if test to ensure length of arguments are more than 1. */
if (defined $ARGV[0])
{
    # Set value of var option to 2nd element of argument list. */
    $option = $ARGV[0];
}

# Use if statement to check if option given is in allowable options. */

my $found = grep( /^$option$/, @allowable_options);

if (! grep( /^$option$/, @allowable_options))
{
    # Call the show_usage function. */
    show_usage($option);
}


# Declare var called line. Add many equal signs as its value. */
my $line = "===============================================================\n";

# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit." */
my $head = "Enter a list of types of trees. One tree per prompt. " .
    "Type %s to quit.\n";

# Declare var called prompt. Add "Enter: " as its value. */
my $prompt = "Enter: ";

# Declare var called recap. Add "You entered: " as its value. */
my $recap = "You entered %d trees: \n";

# Declare var called item. Add "  * <string-formatter>" as its value. */
my $item = "  * %s\n";

# Declare var called term. Add "X" as its value. */
my $term = "X";

# Print variable 'head'. */
printf($head, $term);

# Print variable 'line'. */
printf($line);

# Declare var called trees. Initialize as an empty tuple. */
my @trees = ();

# Declare var called tree. Initialize as an empty string. */
my $tree = "";

# Declare a var called count. Initialize to 0. */
my $count = 0;

# Set a while loop that runs as long as tree does not equal term. */
while (lc $tree ne lc $term)
{
    # Set the input using prompt as the value for tree. */
    print $prompt;
    $tree = <STDIN>;
    chomp($tree);
    $tree = lc $tree;

    # Add tree as an element of the trees tuple. */
    push @trees, $tree;

    # Increment count by one. */
    $count++;
}

# Remove the terminator character from the trees tuple. */
pop(@trees);
$count--;

# Using if, test if trees has any elements. */
if (@trees)
{
    # Using if, test that option is equal to 'list'. */
    if ($option eq "list")
    {
        # Print a newline. */
        print "\n";

        # Print variable 'line'. */
        print $line;

        # Print variable 'recap'. */
        printf($recap, $count);

        # Set a for loop through the trees tuple using tree as the element. */
        foreach $tree (@trees)
        {
            # Print the variable item and substitute an uppercase tree as */
            printf($item, uc $tree);
        }
    }

    # Else if option is equal to 'line':*/
    elsif ($option eq "line")
    {
        # Print a newline. */
        print "\n";

        # Print variable 'line'. */
        print $line;

        # Print variable 'recap'. */
        printf($recap, $count);

        # Print the joining of the elements of the trees tuple in one line. */
        # Each tree should be fully uppercase. */

        print(uc(join(" * ", @trees)));

        print("\n");
    }
}
    # Else option ... should be impossible to reach. */
else
{
    print "Impossible.\n";
}

