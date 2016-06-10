#!/usr/bin/env php

<?php
# Add the directive to tell the terminal which interpreter to use for this
# script and set the tag to specify this is a php file.

# Print out: "This is a line. Note how the next line prints below this one."
echo "This is a line. Note how the next line prints below this one.\n";

# Print out: "Note how the next 'line' goes to the right. " but without
# a newline.

echo "Note how the next 'line' goes to the right. ";

# Print out: "Short line."
echo "Short line.\n";


# Print out: "Now we're back to a new line." Put a newline character at the
# end of the string.
echo "Now we're back to a new line.\n\n";

# Print out: "Did you see how this line skipped to a new one?"
echo "Did you see how this line skipped to a new one?\n";

# Declare three variables ('name', 'age' and 'half'). Assign your name
# to 'name', assign your age to 'age' and 0.5 to 'half.'
$name = "My Name";
$age = 48;
$half = 0.5;

# Print out:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
echo "My name is $name\n";
echo "My age is $age\n";
echo "A half a cup is $half of a full cup.\n\n";

# Print out using string formatting:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
printf("My name is %s\n", $name);
printf("My age is %d\n", $age);
printf("A half a cup is %f of a full cup.\n\n", $half);

# Print out using the string concatenator:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
echo "My name is " . $name . "\n";
echo "My age is " . $age . "\n";
echo "A half a cup is " . $half . "\n\n";

# Print out "About me and what I think about cups:". Insert a newline at
# the end.
printf("About me and what I think about cups:\n\n");

# Print out using the format method:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
# Make sure each line starts with a tab.
printf("\tMy name is %s\n", $name);
printf("\tMy age is %d\n", $age);
printf("\tA half a cup is %f of a full cup.\n\n", $half);

?>