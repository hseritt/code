#!/usr/bin/env bash

# Define function called show_usage. */


    # Print 'Unknown option "<<option>>". Acceptable: list or line' */


    # Exit program with status of 0. */




# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value. */


# Set option to have the value of the first command line argument.


# Using if, test if var option is empty string.


    # If is empty string ...
    # Declare var called option. Set default as 'list'. */



# Create var option_acceptable and have it equal to the output of a grep
# for option in the allowable_options array.


# Use if statement to check if option_acceptable has content or not. */


    # If so ...
    # Call the show_usage function. */



# Declare var called line. Add many equal signs as its value. */


# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit." */
# NOTE - this won't work with Bash. Has to be printed with printf as
# part of a string literal.

# Declare var called prompt. Add "Enter: " as its value. */


# The next two lines are not applicable with a bash script.
# Declare var called recap. Add "You entered: " as its value. */
# Declare var called item. Add "  * <string-formatter>" as its value. */

# Declare var called term. Add "X" as its value. */


# Print variable 'head'. */


# Print variable 'line'. */


# Print a newline.


# Declare var called trees. Initialize as an empty array. */


# Declare var called tree. Initialize as an empty string. */


# Declare a var called count. Initialize to 0. */


# Set a while loop that runs as long as tree does not equal term.
# Both tree and term should be lowercase when testing against each other.


    # Set the input using prompt as the value for tree. *



    # Add tree as an element of the trees tuple. */


    # Increment count by one. */




# Remove the terminator character from the trees tuple. */


# Decrement count by one.


# Using if, test if trees has any elements. */
if [ ${#trees[@]} -gt 1 ]


    # Using if, test that option is equal to 'list'. */


        # Print a newline. */


        # Print variable 'line'. */


        # Print variable 'recap'. */


        # Set a for loop through the trees tuple using tree as the element. */


            # Print the variable item and substitute an uppercase tree as */



    # Else if option is equal to 'line':*/


        # Print a newline. */


        # Print variable 'line'. */


        # Print variable 'recap'. */


        # Print the joining of the elements of the trees tuple in one line. */
        # Each tree should be fully uppercase. */








