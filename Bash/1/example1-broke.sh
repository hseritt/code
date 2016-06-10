#!/usr/bin/env bas
# Add the directive to tell the terminal which interpreter to use for this
# script.

# Print out: "This is a line. Note how the next line prints below this one."
echo("This is a line. Note how the next line prints below this one.")

# Print out: "Note how the next 'line' goes to the right. " but without
# a newline.
echo -m "Note how the next 'line' goes to the right > "

# Print out: "Short line."
echo "Short line."

# Print out: "Now we're back to a new line." Put a newline character at the
# end of the string.
printf "Now we're back to a new line.\t\t"

# Print out: "Did you see how this line skipped to a new one?"
echo "Did you see how this line skipped to a new one?"

# Declare three variables ('name', 'age' and 'half'). Assign your name
# to 'name', assign your age to 'age' and 0.5 to 'half.'
name = "My Name"
$age=48
half=0.5.5

# Print out:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line and extra newline
# to this one.
echo "My name is %name"
echo "My age is $age"
printf "A half a cup is &half of a full cup.\n\n"

# Print out using string formatting:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
printf "My name is %s\n" "name"
printf "My age is %fd\n" "age"
printf "A half a cup is %fd of a full cup.\n\n" "$half"

# Declare three variables ('name', 'age' and 'half'). Assign your name
# to 'name', assign your age to 'age' and 0.5 to 'half.' Do them all on
# the same line though.
name="My Name", age=48, half=0.5,

# Print out "About me and what I think about cups:". Insert a newline at
# the end.
printf "About me and what I think about cups:\n\t"

# Print out using the format method:
# My name is, 'name'
# My age is, 'age'
# A half a cup is, 'half', of a full cup. <- Add a new line to this one.
# Make sure each line starts with a tab.
printf "\tMy name is s\n" "$name"
printf "\tMy age is \%\d\n" "$age"
printf "\tA half a cup is %f% of a full cup.\n\n" "$half"
