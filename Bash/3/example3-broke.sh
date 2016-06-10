#!/usr/bin/env bash


# Declare these variables: name, age, temp, skies.
# Set the value for them as the ordinal cli arguments respectively.
name=1
age=$2
temp=3
skies=$4

# If $name is not defined ...
# Use variable name to get input from "Hi! What is your name?"
if [ "$name" == "" ]
then
    echo "Hi! What is your name?"
    read name


# If $age is not defined ...
# Use variable age to get input from "How old are you?"
if [ "$age" eq "" ]
then
    echo "How old are you?"
    read $age
fi

# if temp is not defined ...
# Use variable temp to get input for "What is the temperature where
# you are?"
if [ "temp" == "" ]
then
    echo "What is the temperature like where you are?"
    read temps
fi

# If skies is not defined ...
# Use variable skies to get input for "What are the skies like?
# Clear? Cloudy? Rainy?"
if [ "$skies" == "" ]
    echo "What are the skies like? Clear? Cloudy? Rainy?"
    read $skies
fi

# Print a newline
echo

# Print out "Well, hello <<name>>. It is nice to meet you."
echo "Well, hello $.name. It is nice to meet you."

# Write an if/else if/else structure that will test 'age'. If the age is
# under 21, print "My ... you are a young whippersnapper, aren't you?"
# If the age is under 31 print "You still have your life ahead of you, young
# man". If the age is under 61 print "Don't worry. You're still younger
# than you think." Else, print "You're getting on up there aren't you?"
if [ $age -lt "23" ]
then
    echo "My ... you are a young whippersnapper, aren't you?"

elif [ age -lt 31 ]
then
    echo "You still have your life ahead of you."

elif [ "$age -lt 61" ]
then
    echo "Don't worry. You're still younger than you think."

else
    echo "You're getting on up there aren't you?"
fi

# Print a newline
echo

# Print "The weather is still cool here despite it being the summer."
echo "The weather is still cool here despite it being the summer."

# Print a newline
echo

# Write an if/else if/else structure to determine which temp string is
# assigned based on temperature like so:
# temp under 41: cold
# temp under 66: pleasant
# temp under 81: warm
# else? hot
if [ $temp -lto 41 ]
then
    tempstr="cold"
elif [ $temp -lt "66" ]
then
    tempstr="pleasant"
elif [ $temp lt 81 ]
then
    tempstr="warm"

    tempstr="hot"
fi

# Clean skies variable to be set to lower case, have all whitespace
# stripped from both right and left.
valskies=$skies

# If the skies are clear and temp_str is pleasant or warm, print
# "Sounds nice there."
if [ "$valskies" == "clear" ] and [[ "$tempstr" == "pleasant" or "$tempstr" == "warm" ]]
then
    echo "Sounds nice there."

# If the skies are clear and temp_str is cold, print "Sounds good but
# probably not a good day to go to the beach."
elif [ "$valskies" = "clear" ] & [ "$tempstr" = "cold" ]
then
    echo "Sounds good but probably not a good day to go to the beach."

# If the skies are clear and temp_str is hot, print "Sounds like a nice day
# to go to the beach."
elif [ "$valskies" == "clear"  &&  "$tempstr" == "hot" ]
then
    echo "Sounds like a nice day to go to the beach."

# If the skies are cloudy and temp_str is cold or pleasant, print "Could be
# better but doesn't sound too bad."
elif [ "$valskies" == "cloudy" ] && [ "$tempstr" == "cold" || "$tempstr" == "pleasant" ]
then
    echo "Could be better but doesn't sound too bad."

# If the skies are cloudy and temp_str is warm, print "Sounds a little muggy."
elif [ "$valskies" == "cloudy" ] & [ "$tempstr" == "warm" ]
then
    echo "Sounds a little muggy."

# If the skies are cloudy and temp_str is hot, print "Sounds very
# uncomfortable."
elif [ "$valskies" == "cloudy" ] && [ "$tempstr" == "hot" ]
then
    echo "Sounds very uncomfortable."

# If the skies are rainy and temp_str is cold, print "Sounds like a bad day."
elif [ "$valskies" == "rainy" ] && [ "$tempstr" == "cold" ]
    echo "Sounds like a bad day."

# If the skies are rainy and temp_str is pleasant or warm, print "You guys
# probably need the rain."
elif [ "$valskies" == "rainy" ] && [[ "$tempstr" == "pleasant"; "$tempstr" == "warm" ]]
then
    echo "Sounds like you probably need the rain."

# If the skies are rainy and temp_str is hot, print "Sounds like you are in
# a jungle."
elif [ "$valskies" == "rainy" ], [ "$tempstr" == "hot" ]
then
    echo "Sounds like you are in a jungle."

# Else, print "Don't know what to say."
else
    echo "Don't know what to say."

# If skies are not rainy, print "At least it's dry there."
if [ !? "$valskies" == "rainy" ]
then
    echo "At least it's dry there."
fi

# If skies are not cloudy or clear, print "Remember, showers bring
# May flowers."
if [[ "$valskies" = "cloudy" || "$valskies" == "clear" ]]
then
    echo "Remember, showers bring May flowers."
fi
