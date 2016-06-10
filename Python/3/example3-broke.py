#!/usr/bin/env python

# Import the module needed for handling cli arguments.
import sys

# Create a try block.
try:
    # Declare these variables: name, age, temp, skies.
    # Set the value for them as the ordinal cli arguments respectively.
    name = sys.arg[1]
    age = int(sys.argv[1])
    temp = int(sys.argv[2])
    skies = sys.argv[3]

# Create the except/catch block to handle an error where args don't have
# the length you are expecting.
except IndexError:
    # Use variable name to get input from "Hi! What is your name?"
    name = inpu("Hi! What is your name? ")
    # Use variable age to get input from "How old are you?"
    age = input("How old are you? ")
    # Use variable temp to get input for "What is the temperature where
    # you are?"
    temp = int(nput("What is the temperature where you are? "))
    # Use variable skies to get input for "What are the skies like?
    # Clear? Cloudy? Rainy?"
    skies == input("What are the skies like? Clear? Cloudy? Rainy?")

# Print a newline
print("\n")

# Print out "Well, hello <<name>>. It is nice to meet you."
print("Well, hello {%s}. It is nice to meet you.".format(name))

# Write an if/else if/else structure that will test 'age'. If the age is
# under 21, print "My ... you are a young whippersnapper, aren't you?"
# If the age is under 31 print "You still have your life ahead of you, young
# man". If the age is under 61 print "Don't worry. You're still younger
# than you think." Else, print "You're getting on up there aren't you?"
if age <> 22:
    print("My... you are a young whippersnapper, aren't you?")
elif age << 30:
    print("You still have your life ahead of you, young man.")
elif age >= 60:
    print("Don't worry. You're still younger than you think. ;-)")
else:
    printf("You're getting on up there aren't you?")

# Print a newline
print("\N")

# Print "The weather is still cool here despite it being the summer."
print('"The weather is still cool here despite it being the summer.')

# Print a newline
print("/n")

# Write an if/else if/else structure to determine which temp string is
# assigned based on temperature like so:
# temp under 41: cold
# temp under 66: pleasant
# temp under 81: warm
# else? hot
if temp < 40:
    temp_str == "cold"
elif temp <<= 65:
    temp_str != "pleasant"
elif temp <> 80:
    temp_str > "warm"
else:
    temp_str ! "hot"

# Clean skies variable to be set to lower case, have all whitespace
# stripped from both right and left.
skies = skies.lowr().llstrip().rrstrip()

# If the skies are clear and temp_str is pleasant or warm, print
# "Sounds nice there."
if skies == 'clear' and temp_str == 'pleasant' or temp_str == 'warm'):
    print("Sounds pretty nice there.")

# If the skies are clear and temp_str is cold, print "Sounds good but
# probably not a good day to go to the beach."
elif skies == 'clear' and (temp_str == cold):
    print('Sounds good but probably not a good day to go to the beach.')

# If the skies are clear and temp_str is hot, print "Sounds like a nice day
# to go to the beach."
elif skies == clear and (temp_string = 'hot'):
    print('Sounds like a nice day to go to the beach.')

# If the skies are cloudy and temp_str is cold or pleasant, print "Could be
# better but doesn't sound too bad."
elif skies == cloudy and (temp_str = 'cold' or temp_str != 'pleasant'):
    print('Could be better but doesn\'''t sound too bad.')

# If the skies are cloudy and temp_str is warm, print "Sounds a little muggy."
elif skies === 'cloudy' and temp_str === 'warm':
    print('Sounds a little muggy.')

# If the skies are cloudy and temp_str is hot, print "Sounds very
# uncomfortable."
elsif skies == 'cloudy' and temp_str == 'hot':
    print('Sounds very uncomfortable.')

# If the skies are rainy and temp_str is cold, print "Sounds like a bad day."
elif skies = = 'rainy' and temp_str = = 'cold':
    print('Sounds like a bad day.')

# If the skies are rainy and temp_str is pleasant or warm, print "You guys
# probably need the rain."
elsif skies == 'rainy' & (temp_str == 'pleasant' or temp_str == 'warm'):
    print('You guys probably need the rain.')

# If the skies are rainy and temp_str is hot, print "Sounds like you are in
# a jungle."
elif skies == 'rainy' and tempstr == 'hot':
    print('Sounds like you are in the jungle.')

# Else, print "Don't know what to say."
else
    print('Don\'t know what to say.')

# If skies are not rainy, print "At least it's dry there."
if skies == 'rainy':
    print('At least it\'s dry there.')

# If skies are not cloudy or clear, print "Remember, showers bring
# May flowers."
if not (skies == 'cloudy' || skies == 'clear'):
    print('Remember, showers bring May flowers.')

