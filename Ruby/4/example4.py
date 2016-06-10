#!/usr/bin/env python

# Import the sys module.
import sys

# Define function called show_usage with option as its parameter.
def show_usage(option):
    # Print 'Unknown option "<<option>>". Acceptable: list or line'
    print('Unknown option "{}". Acceptable: list or line'.format(option))

    # Exit program with status of 0.
    sys.exit(0)

# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value.
allowable_options = ('list', 'line',)

# Declare var called option. Set default as 'list'.
option = 'list'

# Using if test to ensure length of arguments are more than 1.
if (len(sys.argv) > 1):
    # Set value of var option to 2nd element of argument list.
    option = sys.argv[1]

# Use if statement to check if option given is in allowable options.
if option not in allowable_options:
    # Call the show_usage function.
    show_usage(option)


# Declare var called line. Add many equal signs as its value.
line = '===================================================================='

# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit."
head = 'Enter a list of types of trees. One tree per prompt. Type %s to quit.'

# Declare var called prompt. Add "Enter: " as its value.
prompt = 'Enter: '

# Declare var called recap. Add "You entered: " as its value.
recap = 'You entered %d trees: '

# Declare var called item. Add "  * <string-formatter>" as its value.
item = '  * %s'

# Declare var called term. Add "X" as its value.
term = 'X'

# Print variable 'head'.
print(head % (term))

# Print variable 'line'.
print(line)

# Declare var called trees. Initialize as an empty tuple.
trees = []

# Declare var called tree. Initialize as an empty string.
tree = ''

# Declare a var called count. Initialize to 0.
count = 0

# Set a while loop that runs as long as tree does not equal term.
while tree != term.lower():
    # Set the input using prompt as the value for tree.
    tree = input(prompt).lower()
    # Add tree as an element of the trees tuple.
    trees.append(tree)
    # Increment count by one.
    count += 1

# Remove the terminator character from the trees tuple.
trees.remove(term.lower())

# Using if, test if trees has any elements.
if trees:
    # Using if, test that option is equal to 'list'.
    if option == 'list':
        # Print a newline.
        print('\n')

        # Print variable 'line'.
        print(line)
        # Print variable 'recap'.
        print(recap % (count - 1))

        # Set a for loop through the trees tuple using tree as the element.
        for tree in trees:
            # Print the variable item and substitute an uppercase tree as
            # the string value.
            print(item % (tree.upper()))

    # Else if option is equal to 'line':
    elif option == 'line':
        # Print a newline.
        print('\n')

        # Print variable 'line'.
        print(line)
        # Print variable 'recap'.
        print(recap % (count - 1))
        # Print the joining of the elements of the trees tuple in one line.
        # Each tree should be fully uppercase.
        print(' * '.join(trees).upper())

    # Else option ... should be impossible to reach.
    else:
        print('Impossible.')
# Else ...
else:
    # Print "No trees listed."
    print("No trees listed.")
