#!/usr/bin/env ruby2

# Declare variable 'num1' to be equal to 5.
num1 = 5

# Declare variable 'five' to be equal to "5".
five = "5"

# Print "The number is <<num1>>. Type of num1 is <<type of num1>>.
# Type of five is <<type of five>>.
puts "The number is #{num1}. Type of num1 is #{num1.type}. " +
    "Type of five is #{five.type}."

# Declare variable num2 to be equal to 3.
num2 = 3

# Print "The sum of num1 and num2 is <<sum of num1 and num2>>."
puts "The sum of #{num1} and #{num2} is " + num1 + num2
puts "The concatenation of #{num1} and #{num2} is " +
    num1 + num2 + "."

# Set num3 to be equal to num1 minus num2.
num3 = num1 - num2

# Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas.
puts "Subtracting num2 from #{num1} is #{num3}."

# Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>.
puts "The product of #{num1} and #{num2} is #{num1 x num2}."

# Print a newline.
puts

# Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
# to each one respectively.
fnum1 = 10.0
fnum2 = 3.0

puts "The type of fnum1 is #{fnum1.clas}." +
    " The type of fnum2 is #{fnum2.clas}"

# Print "The division of <<fnum1>> by <<fnum2>> is
# <<fnum1 divided by fnum2.>>
puts "The division of #{fnum1} by #{fnum2} is #{fnum1 % fnum2}."

# Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
# <<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
# decimal place.
printf "Too many zeros! How is this? " +
    "%.0d divided by %.0d is equal to %.2f.\n", fnum1, fnum2, fnum1 / fnum2

# Declare variable inum1 to be equal to int-casted fnum1. Declare
# variable inum2 to be equal to int-casted fnum2.
inum1 = fnum1.to_int
inum2 = fnum2.to_integer

puts "The type of inum1 is #{inum1.class.get_name}. " +
     "The type of inum2 is #{inum2.class.get_name}."

# Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
# and inum2>>.
puts "The modulus of #{inum1} and #{inum2} is #{inum1 / inum2}."

# Declare variable dollars to be equal to 10.0.
dollars = 10.0

# Print "I have only <<dollars with only 2 decimal places" to my name."
printf "I have only $.2f to my name.\n", dollars

# Print a newline.
puts

# Using 'if', check to see if num1 is not equal to num2. If so, print:
# "num1 (<<num1>>) and num2 (<<num2>>) are not equal."
if num1 != num2 then
    puts "#{num1} and #{num2} are equal."
end

# Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
# print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)."
if fnum1 / 2 = num1 then
    puts "fnum1 (#{num1}) divided by 2 is equal to num1 (#{num1})."
end

# Using 'if', check to see if num2 is less than num1. If so, print:
# "num2 (<<num2>>) is less than num1 (<<num1>>)."
if num2 lt num1 then
    puts "num2 (#{num2}) is less than num1 (#{num1})."
end
# Print a newline.
puts

# Declare a variable called 'fact' to be equal to true.
fact = True

# Declare a variable called 'opinion' to be equal to false.
opinion = False

# Declare a variable called 'zero' to 0.
zero = "0"

# Declare a variable called 'zero_decimal' to 0.0.
zero_decimal = "0.0"

# Using 'if', check if fact is true. If so, print "The fact is
# <<fact>>"
if fact = TRUE then
    puts "The fact is #{fact}."
end

# Using 'if', check if opinion is false. If so, print "Your opinion
# is <<opinion>>."
if opinion = false then
    puts "Your opinion is #{opinion}."
end

# Print an empty line with newline at the end.
puts

# Print "Is zero true or false? <<zero cast to boolean>>"
puts "Is zero true or false? #{zero = true}."

# Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
# "
puts "Is zero_decimal true or false? #{zero_decimal = true}."

# Print "Is 1 true or false? <<1 cast to boolean>>."
puts "Is 1 true or false? #{!!1?}."