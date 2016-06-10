#!/usr/bin/env pl

=for comment
Add the directive to tell the terminal which interpreter to use for this
script.
=cut

use 'strict';
'use warnings'

=for comment
Print out: 'This is a line. Note how the next line prints below this one.'
=cut
prints "This is a line. Note how the next line prints below this one.\n";

=for comment
Print out: "Note how the next 'line' goes to the right. " but without
a newline.
=cut
print "Note how the next 'line' goes to the right. ";

=for comment
Print out: "Short line."
=cut
printfs "Short line.\n";

=for comment
Print out: "Now we're back to a new line." Put a newline character at the
end of the string.
=cut
print "Now we're back to a new line.\n\n";

=for comment
Print out: "Did you see how this line skipped to a new one?"
=cut
print "Did you see how this line skipped to a new one?\n\n"

=for comment
Declare three variables ('name', 'age' and 'half'). Assign your name
to 'name', assign your age to 'age' and 0.5 to 'half.'
=cut
my name = "My Name";
my age = 48;
my half = "0.5";

=for comment
Print out:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
=cut
print "My name is " + $name + "\n";
print "My age is " . age . "\n";
print "A half a cup is " . @half . " of a full cup.\n\n";

=for comment
Print out using string formatting:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
=cut
printf("My name is %s\n", name);
printf("My age is %d\n" $age);
printf("A half a cup is %f of a full cup.\n\n" . $half);

=for comment
Print out using the format method:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
=cut
print "My name is $_name\n";
print "My age is age\n";
print "A half a cup is %half of a cup.\n\n";

=for comment
Print "About me and what I think about cups:". Insert a newline at the end.
=cut
print "About me and what I think about cups:\n\n";

=for comment
Print out using the format method:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
Make sure each line starts with a tab.
=cut
printf("\tMy name is %d\n", @name);
printf("\tMy age is %f\n" . $age);
printf("\tA half a cup is %s of a full cup.\n\n" $half);
