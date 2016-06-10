#!/usr/bin/env python

""" Declare variable 'num1' to be equal to 5. """
num1 = 5

""" Declare variable 'five' to be equal to "5". """
five = "5"

""" Print "The number is <<num1>>. Type of num1 is <<type of num1>>.
Type of five is <<type of five>>. """
print("The number is {}. Type of num1 is {}. Type of five is {}.".format(
    num1, type(num1), type(five)))

""" Declare variable num2 to be equal to 3. """
num2 = 3
""" Print "The sum of num1 and num2 is <<sum of num1 and num2>>." """
print("The sum of num1 and num2 is %d." % (num1 + num2))

""" Set num3 to be equal to num1 minus num2. """
num3 = num1 - num2
""" Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas. """
print("Subtracting ", num2, " from ", num1, " is ", num3)

""" Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>. """
print("The product of {} and {} is {}.".format(num1, num2, num1 * num2))

""" Print a newline. """
print()
""" Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
to each one respectively. """
fnum1 = 10.0
fnum2 = 3.0

""" Print "The division of <<fnum1>> by <<fnum2>> is
<<fnum1 divided by fnum2.>> """
print("The division of %f by %f is %f." % (fnum1, fnum2, fnum1 / fnum2))

""" Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
<<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
decimal place. """
print(
    "Too many zeros. How is this? %.f divided by %.f = %.1f" % (
        fnum1, fnum2, fnum1 / fnum2))

""" Declare variable inum1 to be equal to int-casted fnum1. Declare
variable inum2 to be equal to int-casted fnum2. """
inum1 = int(fnum1)
inum2 = int(fnum2)

""" Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
and inum2>>. """
print("The modulus of %d and %d is %d." % (inum1, inum2, inum1 % inum2,))

""" Declare variable dollars to be equal to 10.0. """
dollars = 10.0
""" Print "I have only <<dollars with only 2 decimal places" to my name." """
print("I have only $%.2f USD to my name. :(" % (dollars))

""" Print a newline. """
print()

""" Using 'if', check to see if num1 is not equal to num2. If so, print:
"num1 (<<num1>>) and num2 (<<num2>>) are not equal." """
if num1 != num2:
    print("num1 (%d) and num2 (%d) are not equal." % (num1, num2))

""" Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)." """
if fnum1 / 2 == num1:
    print("fnum1 (%d) divided by 2 is equal to num1 (%d)" % (fnum1, num1))

""" Using 'if', check to see if num2 is less than num1. If so, print:
"num2 (<<num2>>) is less than num1 (<<num1>>)." """
if num2 < num1:
    print("num2 (%d) is less than num1 (%d)." % (num2, num1))

""" Print a newline. """
print()

""" Declare a variable called 'fact' to be equal to true. """
fact = True

""" Declare a variable called 'opinion' to be equal to false. """
opinion = False

""" Declare a variable called 'zero' to 0. """
zero = 0

""" Declare a variable called 'zero_decimal' to 0.0. """
zero_decimal = 0.0

""" Using 'if', check if fact is true. If so, print "The fact is
<<fact>>" """
if fact:
    print("The fact is {}".format(fact))

""" Using 'if', check if opinion is false. If so, print "Your opinion
is <<opinion>>." """
if not opinion:
    print("Your opinion is {}".format(opinion))

""" Print an empty line with newline at the end. """
print()

""" Print "Is zero true or false? <<zero cast to boolean>>" """
print("Is zero true or false? {}".format(bool(zero)))

""" Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
" """
print("Is zero_decimal true or false? {}".format(bool(zero_decimal)))

""" Print "Is 1 true or false? <<1 cast to boolean>>." """
print("Is 1 true or false? {}".format(bool(1)))