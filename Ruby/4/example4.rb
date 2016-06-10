#!/usr/bin/env ruby2

# Define function called show_usage with option as its parameter.
def show_usage(option)
    # Print 'Unknown option "<<option>>". Acceptable: list or line'
    puts 'Unknown option "#{option}". Acceptable: list or line'

    # Exit program with status of 0.
    Process.exit 0
end

# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value.
allowable_options = ['list', 'line']

# Declare var called option. Set default as 'list'.
option = 'list'

# Using if test to ensure length of arguments are more than 1.
if !ARGV.empty?
    # Set value of var option to 2nd element of argument list.
    option = ARGV[0]
end

# Use if statement to check if option given is in allowable options.
if not allowable_options.include? option then
    # Call the show_usage function.
    show_usage option
end

# Declare var called line. Add many equal signs as its value.
line = '======================================================================'

# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit."
head = "Enter a list of types of trees. \nOne tree per prompt. Type '%s' " +
    "to quit.\n"

# Declare var called prompt. Add "Enter: " as its value.
prompt = "Enter: "

# Declare var called recap. Add "You entered: " as its value.
recap = "You entered %d trees:\n"

# Declare var called item. Add "  * <string-formatter>" as its value.
item = "  * %s"

# Declare var called term. Add "X" as its value.
term = 'X'

# Print variable 'head'.
printf head, term

# Print variable 'line'.
puts line

# Declare var called trees. Initialize as an empty tuple.
trees = []

# Declare var called tree. Initialize as an empty string.
tree = ''

# Declare a var called count. Initialize to 0.
count = 0

# Set a while loop that runs as long as tree does not equal term.
while tree.downcase != term.downcase
    # Set the input using prompt as the value for tree.
    puts "Enter tree type: "
    tree = STDIN.gets.chomp
    # Add tree as an element of the trees tuple.
    trees.push tree.upcase
    # Increment count by one.
    count += 1
end

# Remove the terminator character from the trees tuple.
trees.delete term.upcase
count -= 1

# Using if, test if trees has any elements.
if not trees.empty? then
    # Using if, test that option is equal to 'list'.
    if option == 'list' then
        # Print a newline.
        puts ""

        # Print variable 'line'.
        puts line

        # Print variable 'recap'.
        printf recap, count

        # Set a for loop through the trees tuple using tree as the element.
        trees.each do |tree|
            # Print the variable item and substitute an uppercase tree as
            # the string value.
            printf item + "\n", tree
        end

    # Else if option is equal to 'line':
    elsif option == 'line' then
        # Print a newline.
        puts ""

        # Print variable 'line'.
        puts line
        # Print variable 'recap'.
        printf recap, count

        # Print the joining of the elements of the trees tuple in one line.
        # Each tree should be fully uppercase.
        puts trees.join ' * '

    # Else option ... should be impossible to reach.
    else
        puts "Impossible."
    end

# Else ...
else
    # Print "No trees listed."
    puts "No trees listed."
end
