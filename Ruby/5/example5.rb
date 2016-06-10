#!/usr/bin/env ruby2

require 'set'

def display_names name_list

  puts '****************************'
  name_list.each do |name|
      puts name
  end
  puts "\n"
end

names = ['Bob', 'Jack', 'Jill', 'Mike', 'John', 'Jim', 'Lisa']

name_list = []

names.each do |name|
  name_list.push name
end

display_names name_list

more_names = ['Mark', 'Matt', 'Luke', 'Juan', 'Jose']
name_list.concat more_names
display_names name_list

puts 'Put Alfa at the front of the line ...'
name_list.insert 0, 'Alfa'
display_names name_list

puts 'Remove Bob from the list ...'
name_list.delete 'Bob'
display_names name_list

puts 'Remove the first and last ...'
name_list.delete_at 0
name_list.pop
display_names name_list

puts 'Clear the whole list ...'
name_list.clear
display_names name_list

puts 'Fill it with names again ...'
name_list = Array.new names
display_names name_list

puts 'Get the index of "Mike" ...'
puts name_list.index 'Mike'

puts 'Get the count of "Mike" in name_list ...'
puts name_list.count 'Mike'

puts 'Sort name_list by alphabetical order ...'
name_list.sort
display_names name_list

puts "Now let's reverse them ..."
name_list.reverse
display_names name_list

puts 'Slice the 2nd through 4th values ...'
display_names name_list.slice 1, 4

puts 'Inserting Charles at the 3rd position ...'
name_list.insert 2, 'Charles'
display_names name_list

puts 'Now removing Charles ...'
name_list.delete_at 2
display_names name_list

puts "Let's switch to numbers ..."
num_list = [5, 7, 9, 2, 4, 6]
display_names num_list

puts "Let's double them ..."
doubles = num_list.map{|i| i * 2}
display_names doubles

puts "Ok, now to sets ..."
fruits = Set.new ['banana', 'orange', 'apple', 'apple', 'grapes']
display_names fruits