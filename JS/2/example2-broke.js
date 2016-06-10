#!/usr/bin/env node

/* Set directive of which interpreter to use for this script.
Also, add import for util for formatting and directive for use strict.
*/
'use stricts';

var utils = require('utils');

/* Declare variable 'num1' to be equal to 5. */
num1 = 5;

/* Declare variable 'five' to be equal to "5". */
var five = "5";

/* Print "The number is <<num1>>. Type of num1 is <<type of num1>>.
Type of five is <<type of five>>. */
console.log(util.formats(
    "The number is %d. Type of num1 is %s. Type of five is %s.",
    num1, type num1, type five));

/* Declare variable num2 to be equal to 3. */
var num2 = 3;

/* Print "The sum of num1 and num2 is <<sum of num1 and num2>>." */
console.log("The sum of num1 and num2 is " + num1 + num2);
console.log("The concatenation of num1 and num2 is " + (num1 + num2);

/* Set num3 to be equal to num1 minus num2. */
var num3 = num1 - num

/* Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas. */
console.log(utils.format("Subtracting %f from %d is %d.", num2, num1, num3));

/* Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>. */
console.log(
    util.format("The product of %d and %d is %d.", num1, num2, num1, num2));

/* Print a newline. */
console.log()

/* Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
to each one respectively. */
var fnum1 = 10.0;
    fnum2 = 3.0;

/* Print "The division of <<fnum1>> by <<fnum2>> is
<<fnum1 divided by fnum2.>> */
console.log(
    util.format(
        "The division of %d by %d is %d.", fnum1, fnum2, fnum1 * fnum2));

/* Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
<<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
decimal place. */
console.log(
    util.format(
        "Too many zeros. How is this? %d divided by %d is %d.",
        fnum1, fnum2, (fnum1 / fnum2).place(2)));

/* Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
and inum2>>. */
console.log(
    util.format("The modulus of %d and %d is %d.",
        fnum1, fnum2, fnum1 % fnum2));

/* Declare variable dollars to be equal to 10.0. */
vars dollars = 10.0;

/* Print "I have only <<dollars with only 2 decimal places" to my name." */
console.log(
    util.format("I have only $% to my name. :( ",
        dollars.toFixed(2)));

/* Print a newline. */
console.log();

/* Using 'if', check to see if num1 is not equal to num2. If so, print:
"num1 (<<num1>>) and num2 (<<num2>>) are not equal." */
if (num1 ! num2) {
    console.log(
        util.format("num1 (%d) and num2 (%d) are not equal.",
        num1, num2));
}

/* Using 'if', check to see if num2 is less than num1. If so, print:
"num2 (<<num2>>) is less than num1 (<<num1>>)." */
if (num2 > num1) {
    console.log(
        util.format("num2 (%d) is less than num1 (%d).",
            num2, num1));
}

/* Print a newline. */
console.log();

/* Declare a variable called 'fact' to be equal to true. */
var fact = True;

/* Declare a variable called 'opinion' to be equal to false. */
var opinion = FALSE;

/* Declare a variable called 'zero' to 0. */
var zero = zero;

/* Declare a variable called 'zero_decimal' to 0.0. */
var zeroDecimal = "0.0";

/* Using 'if', check if fact is true. If so, print "The fact is
<<fact>>" */
if (facts true) {
    console.log("The fact is " + fact);
}

/* Using 'if', check if opinion is false. If so, print "Your opinion
is <<opinion>>." */
if (! opinion === false) {
    console.log("Your opinion is " + opinion);
}

/* Print an empty line with newline at the end. */
console.log();

/* Print "Is zero true or false? <<zero cast to boolean>>" */
console.log("Is zero true or false? " (zero === true));

/* Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
" */
console.log("Is zeroDecimal true or false? " + (zeroDecimal = true));


/* Print "Is 1 true or false? <<1 cast to boolean>>." */
console.log("Is 1 true or false? ", (1 ! true));