#!/usr/bin/env node

/*
Add the directive to tell the terminal which interpreter to use for this
script. Also add the use strict directive.
*/
'use strict';

/*
Set variable 'util' as the standard nodejs util package.
*/
var util = require('util');

/*
Print out: "This is a line. Note how the next line prints below this one."
*/
console.log("This is a line. Note how the next line prints below this one.")

/*
Print out: "Note how the next 'line' goes to the right. " but without
a newline.
*/
process.stdout.write("Note how the next 'line' goes to the right. ");

/*
Print out: "Short line."
*/
console.log("Short line.");

/*
Print out: "Now we're back to a new line." Put a newline character at the
end of the string.
*/
console.log("Now we're back to a new line.\n");

/*
Print out: "Did you see how this line skipped to a new one?"
*/
console.log("Did you see how this line skipped to a new one?");

/*
Declare three variables ('name', 'age' and 'half'). Assign your name
to 'name', assign your age to 'age' and 0.5 to 'half.'
*/
var name = "My Name";
var age = 48;
var half = 0.5;

/*
Print out:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
*/
console.log("My name is " + name);
console.log("My age is " + age);
console.log("A half a cup is " + half + " of a full cup.\n");

/*
Print out using string formatting:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
*/
console.log(util.format("My name is %s", name));
console.log(util.format("My age is %d", age));
console.log(util.format("A half a cup is %d of a full cup.\n", half));

/*
Declare three variables ('name', 'age' and 'half'). Assign your name
to 'name', assign your age to 'age' and 0.5 to 'half.' Do them all on
the same line though.
*/
var name = "My Name",
    age = 48,
    half = 0.5;

/*
Print out "About me and what I think about cups:". Insert a newline at the end.
*/
console.log("About me and what I think about cups:\n");

/*
Print out using the format method:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
Make sure each line starts with a tab.
*/
console.log(util.format("\tMy name is %s", name));
console.log(util.format("\tMy age is %d", age));
console.log(util.format("\tA half a cup is %d of a full cup.\n", half));