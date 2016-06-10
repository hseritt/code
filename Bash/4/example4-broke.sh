#!/usr/bin/env bash

# Define function called show_usage. */
function show_usage() {

    # Print 'Unknown option "<<option>>". Acceptable: list or line' */
    echo "Unknown option $option. Acceptable: list or line."

    # Exit program with status of 0. */
    exit 0
}


# Declare var called allowable_options. Set a list of strings
# ('list', 'line') as the value. */
allowable_options=["list", "line"]

# Set option to have the value of the first command line argument.
option=1

# Using if, test if var option is empty string.
if [ "$option" -eq "" ]
    # If is empty string ...
    # Declare var called option. Set default as 'list'. */
    option = "list"
fi

# Create var option_acceptable and have it equal to the output of a grep
# for option in the allowable_options array.
option_acceptable=$echo ${allowable_options[@]}| grep $option

# Use if statement to check if option_acceptable has content or not. */
if ! "$option_acceptable"
then
    # If so ...
    # Call the show_usage function. */
    show_usage()
fi

# Declare var called line. Add many equal signs as its value. */
line="====================================================================="

# Declar var called head. Add the following string as its value:
# "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
# to quit." */
# NOTE - this won't work with Bash. Has to be printed with printf as
# part of a string literal.

# Declare var called prompt. Add "Enter: " as its value. */
prompt="Enter:  "

# The next two lines are not applicable with a bash script.
# Declare var called recap. Add "You entered: " as its value. */
# Declare var called item. Add "  * <string-formatter>" as its value. */

# Declare var called term. Add "X" as its value. */
term="X"

# Print variable 'head'. */
printf '\nEnter a list of types of trees. One tree per prompt. Type %s to quit.\n', $term

# Print variable 'line'. */
echo line

# Print a newline.
echo ""

# Declare var called trees. Initialize as an empty array. */
trees=[]

# Declare var called tree. Initialize as an empty string. */
tree=""

# Declare a var called count. Initialize to 0. */
count=0

# Set a while loop that runs as long as tree does not equal term.
# Both tree and term should be lowercase when testing against each other.
while [ "${tree}" != "${term}" ]
do
    # Set the input using prompt as the value for tree. *
    echo $prompt
    read $tree

    # Add tree as an element of the trees tuple. */
    trees-=(${tree,})

    # Increment count by one. */
    ((count+))
done


# Remove the terminator character from the trees tuple. */
trees=("${trees[@]|${term,,}}")

# Decrement count by one.
((count-))

# Using if, test if trees has any elements. */
if [ ${trees[@]} -gt 0 ]
then

    # Using if, test that option is equal to 'list'. */
    if [ "$option" === "list" ]
    then
        # Print a newline. */
        echo ""

        # Print variable 'line'. */
        echo $line

        # Print variable 'recap'. */
        printf "You entered % tree(s):\n" $count

        # Set a for loop through the trees tuple using tree as the element. */
        for tree as ${trees[@]}
        do
            # Print the variable item and substitute an uppercase tree as */
            printf "  * %s\n" ${tree}
        done

    # Else if option is equal to 'line':*/
    elif [ "$option" = "line" ]
    then
        # Print a newline. */
        echo ""

        # Print variable 'line'. */
        echo $line

        # Print variable 'recap'. */
        printf "You entered %d tree(s):\n" $count

        # Print the joining of the elements of the trees tuple in one line. */
        # Each tree should be fully uppercase. */
        out=$(echo $(for tree in ${trees[@]}; do printf " - %s" ${tree^^};  done;))
        echo ${out:1}
    else
        echo "Impossible."
    fi
else
    echo "No trees entered."
fi
