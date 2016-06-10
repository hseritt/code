#!/usr/bin/env ruby2

# Declare these variables: name, age, temp, skies.
# Set the value for them as the ordinal cli arguments respectively.
name = ARGV[0]
age = ARGV[1]
temp = ARGV[2]
skies = ARGV[3]

# Use variable name to get input from "Hi! What is your name?"
unless name
  puts "Hi! What is your name?"
  name = STDIN.gets.chomp
end

# Use variable age to get input from "How old are you?"
unless age
  puts "How old are you?"
  age = STDIN.gets.chomp
end

# Use variable temp to get input for "What is the temperature where
# you are?"
if !temp
  puts "What is the temperature where you are?"
  temp = STDIN.gets.chomp()
end

# Use variable skies to get input for "What are the skies like?
# Clear? Cloudy? Rainy?"
unless skies
  puts "What are the skies like? Clear? Cloudy? Rainy?"
  skies = STDIN.gets.chomp
end

# Print a newline
puts ""

# Print out "Well, hello <<name>>. It is nice to meet you."
puts "Well, hello #{name}. It is nice to meet you."

# Write an if/else if/else structure that will test 'age'. If the age is
# under 21, print "My ... you are a young whippersnapper, aren't you?"
# If the age is under 31 print "You still have your life ahead of you, young
# man". If the age is under 61 print "Don't worry. You're still younger
# than you think." Else, print "You're getting on up there aren't you?"
if age.to_i <= 20 then
  puts "My ... you are a young whippersnapper, aren't you?"
elsif age.to_i <= 30 then
  puts "You still have your life ahead of you."
elsif age.to_i <= 60 then
  puts "Don't worry. You're not as old as you think you are."
else
  puts "You're getting on up there aren't you?"
end

# Print a newline
puts ""

# Print "The weather is still cool here despite it being the summer."
puts "The weather is still cool here despite it being the summer."

# Print a newline
puts ""

# Write an if/else if/else structure to determine which temp string is
# assigned based on temperature like so:
# temp under 41: cold
# temp under 66: pleasant
# temp under 81: warm
# else? hot
if temp.to_i <= 40 then
  temp_str = "cold"
elsif temp.to_i <= 65 then
  temp_str = "pleasant"
elsif temp.to_i <= 80 then
  temp_str = "warm"
else
  temp_str = "hot"
end

# Clean skies variable to be set to lower case, have all whitespace
# stripped from both right and left.
val_skies = skies.downcase.strip

# If the skies are clear and temp_str is pleasant or warm, print
# "Sounds nice there."
if val_skies == "clear" and (temp_str == "pleasant" or temp_str == "warm") then
  puts "Sounds nice there."

# If the skies are clear and temp_str is cold, print "Sounds good but
# probably not a good day to go to the beach."
elsif val_skies == "clear" and temp_str == "cold" then
  puts "Sounds good but probably not a good day to go to the beach."

# If the skies are clear and temp_str is hot, print "Sounds like a nice day
# to go to the beach."
elsif val_skies == "clear" and temp_str == "hot" then
  puts "Sounds like a nice day to go to the beach."

# If the skies are cloudy and temp_str is cold or pleasant, print "Could be
# better but doesn't sound too bad."
elsif val_skies == "cloudy" and
  (temp_str == "cold" or temp_str == "pleasant") then
  puts "Could be better but doesn't sound too bad."

# If the skies are cloudy and temp_str is warm, print "Sounds a little muggy."
elsif val_skies == "cloudy" and temp_str == "warm" then
  puts "Sounds a little muggy."

# If the skies are cloudy and temp_str is hot, print "Sounds very
# uncomfortable."
elsif val_skies == "cloudy" and temp_str == "hot" then
  puts "Sounds very uncomfortable."

# If the skies are rainy and temp_str is cold, print "Sounds like a bad day."
elsif val_skies == "rainy" and temp_str == "cold" then
  puts "Sounds like a bad day."

# If the skies are rainy and temp_str is pleasant or warm, print "You guys
# probably need the rain."
elsif val_skies == "rainy" and
  (temp_str == "pleasant" or temp_str == "warm") then
  puts "You guys probably need the rain."

# If the skies are rainy and temp_str is hot, print "Sounds like you are in
# a jungle."
elsif val_skies == "rainy" and temp_str == "hot" then
  puts "Sounds like you are in a jungle."

# Else, print "Don't know what to say."
else
  puts "Don't know what to say."
end

# If skies are not rainy, print "At least it's dry there."
if val_skies != "rainy" then
  puts "At least it's dry there."
end

# If skies are not cloudy or clear, print "Remember, showers bring
# May flowers."
if val_skies != "cloudy" and val_skies != "clear" then
  puts "Remember, showers bring May flowers."
end
