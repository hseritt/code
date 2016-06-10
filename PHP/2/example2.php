#!/usr/bin/env php

<?php

# Declare variable 'num1' to be equal to 5.
$num1 = 5;

# Declare variable 'five' to be equal to "5".
$five = "5";

# Print "The number is <<num1>>. Type of num1 is <<type of num1>>.
# Type of five is <<type of five>>.
printf(
    "The number is \$num1. Type of \$num1 is %s. The type of \$five is %s.\n",
     gettype($num1), gettype($five));

# Declare variable num2 to be equal to 3.
$num2 = 3;

# Print "The sum of num1 and num2 is <<sum of num1 and num2>>."
printf("The sum of $num1 and $num2 is %d.\n", $num1 + $num2);
echo "The concatenation of $num1 and $num2 is " . $num1 . $num2 . "\n";

# Set num3 to be equal to num1 minus num2.
$num3 = $num1 - $num2;

# Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas.
echo "Subtracting $num2 from $num1 is $num3.\n";

# Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>.
echo "The product of $num1 and $num2 is " . $num1 * $num2 . "\n";

# Print a newline.
echo "\n";

# Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
# to each one respectively.
$fnum1 = 10.0;
$fnum2 = 3.0;

# Print "The division of <<fnum1>> by <<fnum2>> is
# <<fnum1 divided by fnum2.>>
printf("The division of $fnum1 by $fnum2 is %f.\n", ($fnum1 / $fnum2));


# Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
# <<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
# decimal place.
printf(
    "Too many zeros. How is this? %.0f divided by %.0f is equal to %.2f.\n",
    $fnum1, $fnum2, $fnum1 / $fnum2);


# Declare variable inum1 to be equal to int-casted fnum1. Declare
# variable inum2 to be equal to int-casted fnum2.
$inum1 = (int) $fnum1;
$inum2 = (int) $fnum2;

# Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
# and inum2>>.
echo "The modulus of $inum1 and $inum2 is " . $inum1 % $inum2 . "\n";

# Declare variable dollars to be equal to 10.0.
$dollars = 10.0;

# Print "I have only <<dollars with only 2 decimal places" to my name."
printf("I have only $%.2f to my name.\n", $dollars);

# Print a newline.
echo "\n";

# Using 'if', check to see if num1 is not equal to num2. If so, print:
# "num1 (<<num1>>) and num2 (<<num2>>) are not equal."
if ($num1 != $num2) {
    echo "$num1 and $num2 are not equal.\n";
}

# Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
# print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)."
if ($fnum1 / 2 == $num1) {
    echo "\$fnum1 ($fnum1) divided by 2 is equal to \$num1 ($num1).\n";
}

# Using 'if', check to see if num2 is less than num1. If so, print:
# "num2 (<<num2>>) is less than num1 (<<num1>>)."
if ($num2 < $num1) {
    printf("\$num2 (%d) is less than \$num1 (%d).\n", $num2, $num1);
}

# Print a newline.
echo "\n";

# Declare a variable called 'fact' to be equal to true.
$fact = true;

# Declare a variable called 'opinion' to be equal to false.
$opinion = false;

# Declare a variable called 'zero' to 0.
$zero = 0;

# Declare a variable called 'zero_decimal' to 0.0.
$zero_decimal = 0.0;

# Using 'if', check if fact is true. If so, print "The fact is
# <<fact>>"
if ($fact) {
    echo "The fact is " . $fact . "\n";
}

# Using 'if', check if opinion is false. If so, print "Your opinion
# is <<opinion>>."
if (! $opinion) {
    printf("Your opinion is %d.\n", $opinion);
}

# Print an empty line with newline at the end.
echo "\n";

# Print "Is zero true or false? <<zero cast to boolean>>"
echo "Is the fact true or false? " . ($fact == true) . "\n";
echo "Is zero true or false? " . ($zero == true) . "\n";

# Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
# "
echo "Is zero_decimal true or false? " . ($zero_decimal == true) . "\n";

# Print "Is 1 true or false? <<1 cast to boolean>>."
echo "Is '1' true or false? " . (1 == true) . "\n";
?>