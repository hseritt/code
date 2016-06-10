#!/usr/bin/env perl

# Set directives for strictness and warning messages.


# Define function called show_usage with option as its parameter. */



    # Print 'Unknown option "<<option>>". Acceptable: list or line' */


    # Exit program with status of 0. */





# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value. */


# Declare var called option. Set default as 'list'. */


# Using if test to ensure length of arguments are more than 1. */


    # Set value of var option to 2nd element of argument list. */



# Use if statement to check if option given is in allowable options. */





    # Call the show_usage function. */




# Declare var called line. Add many equal signs as its value. */


# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit." */



# Declare var called prompt. Add "Enter: " as its value. */


# Declare var called recap. Add "You entered: " as its value. */


# Declare var called item. Add "  * <string-formatter>" as its value. */


# Declare var called term. Add "X" as its value. */


# Print variable 'head'. */


# Print variable 'line'. */


# Declare var called trees. Initialize as an empty tuple. */


# Declare var called tree. Initialize as an empty string. */


# Declare a var called count. Initialize to 0. */


# Set a while loop that runs as long as tree does not equal term. */


    # Set the input using prompt as the value for tree. */





    # Add tree as an element of the trees tuple. */


    # Increment count by one. */



# Remove the terminator character from the trees tuple. */



# Using if, test if trees has any elements. */


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






    # Else option ... should be impossible to reach. */





