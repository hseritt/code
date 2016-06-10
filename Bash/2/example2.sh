#!/usr/bin/env bash

# Declare variable 'num1' to be equal to 5.
num1=5

# Declare variable num2 to be equal to 3.
num2=3

# Print "The sum of num1 and num2 is <<sum of num1 and num2>>."
printf "The sum of $num1 and $num2 is %d.\n"  "$(($num1 + $num2))"

# Set num3 to be equal to num1 minus num2.
num3=$(($num1 - $num2))

# Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas.
printf "Subtracting $num2 from $num1 is %d.\n" "$num3"

# Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>.
printf "The product of $num1 and $num2 is %d.\n" "$((num1 * num2))"

# Print a newline.
echo ""

fnum1=10
fnum2=3

# Print "The division of <<fnum1>> by <<fnum2>> is
# <<fnum1 divided by fnum2.>>
printf "The division of $fnum1 by $fnum2 is %f.\n" "$(echo "$fnum1 / $fnum2"|bc -l)"

div=$(echo "$fnum1 / $fnum2"|bc -l)

printf "The division of $fnum1 by $fnum2 is %.2f.\n" "$div"


# Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
# and inum2>>.
printf "The modulus of $fnum1 and $fnum2 is %d.\n" "$((fnum1 % fnum2))"

# Declare variable dollars to be equal to 10.0.
dollars=10.0

# Print "I have only <<dollars with only 2 decimal places" to my name."
printf "I have only \$%.2f to my name.\n" "$dollars"
printf 'I have only $%.2f to my name.\n' "$dollars"

# Print a newline.
echo

# Using 'if', check to see if num1 is not equal to num2. If so, print:
# "num1 (<<num1>>) and num2 (<<num2>>) are not equal."
if [ "$num1" -ne "$num2" ]
then
    echo "$num1 and $num2 are not equal."
fi

# Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
# print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)."
div2=$((fnum1 / 2))

if [ "$div2" -eq "$num1" ]
then
    echo "\$fnum1 ($fnum1) divided by 2 is equal to \$num1 ($num1)."
fi

# Using 'if', check to see if num2 is less than num1. If so, print:
# "num2 (<<num2>>) is less than num1 (<<num1>>)."

if [ "$num2" -lt "$num1" ]
then
    echo "\$num2 ($num2) is less than \$num1 ($num1)."
fi

# Print a newline.
echo

# Declare a variable called 'fact' to be equal to true.
fact=true

# Declare a variable called 'opinion' to be equal to false.
opinion=false

# Declare a variable called 'zero' to 0.
zero=0

# Declare a variable called 'zero_decimal' to 0.0.
zero_decimal=0.0

# Using 'if', check if fact is true. If so, print "The fact is
# <<fact>>"
if  "$fact"
then
    echo "The fact is $fact."
fi

# Using 'if', check if opinion is false. If so, print "Your opinion
# is <<opinion>>."
if  ! "$opinion"
then
    echo "Your opinion is $opinion."
fi

# Print an empty line with newline at the end.
echo

# Print "Is zero true or false? <<zero cast to boolean>>"
if [ "$zero" ]
then
    echo "Is zero true or false? true"
fi

# Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
# "
if [ "$zero_decimal" ]
then
    echo "Is zero_decimal true or false? true"
fi
