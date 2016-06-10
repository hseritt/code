#!/usr/bin/env php

<?php


/* Define function called show_usage with option as its parameter. */
function show_usage($option)
{
    /* Print 'Unknown option "<<option>>". Acceptable: list or line' */
    echo "Unknown option \"$option.\" Acceptable: list or line.\n";

    /* Exit program with status of 0. */
    exit(0);
}



/* Declare var called allowable_options. Set a list of strings
/* ('list', 'line') as the value. */
$allowable_options = ["list", "line"];

/* Declare var called option. Set default as 'list'. */
$option = "list";

/* Using if test to ensure length of arguments are more than 1. */
if (count($argv) > 1)
{
    /* Set value of var option to 2nd element of argument list. */
    $option = $argv[1];

}

/* Use if statement to check if option given is in allowable options. */
if (!in_array($option, $allowable_options))
{
    /* Call the show_usage function. */
    show_usage($option);
}


/* Declare var called line. Add many equal signs as its value. */
$line = "==================================================================\n";

/* Declar var called head. Add the following string as its value:
/* "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
/* to quit." */

$head = "Enter a list of types of trees.\nOne tree per prompt." .
    " Type '%s' to quit.\n";


/* Declare var called prompt. Add "Enter: " as its value. */
$prompt = "Enter: ";

/* Declare var called recap. Add "You entered: " as its value. */
$recap = "You entered %d trees: \n";

/* Declare var called item. Add "  * <string-formatter>" as its value. */
$item = "  * %s\n";

/* Declare var called term. Add "X" as its value. */
$term = "X";

/* Print variable 'head'. */
printf($head, $term);

/* Print variable 'line'. */
echo $line;

/* Declare var called trees. Initialize as an empty tuple. */
$trees = [];

/* Declare var called tree. Initialize as an empty string. */
$tree = "";

/* Declare a var called count. Initialize to 0. */
$count = 0;

/* Set a while loop that runs as long as tree does not equal term. */
while (strtolower($tree) != strtolower($term))
{
    /* Set the input using prompt as the value for tree. */
    $tree = readline($prompt);

    /* Add tree as an element of the trees tuple. */
    array_push($trees, strtoupper($tree));

    /* Increment count by one. */
    $count++;
}

/* Remove the terminator character from the trees tuple. */
$count--;
array_pop($trees);

/* Using if, test if trees has any elements. */
if (count($trees) > 0)
{
    /* Using if, test that option is equal to 'list'. */
    if ($option == "list")
    {
        /* Print a newline. */
        echo "\n";

        /* Print variable 'line'. */
        echo $line;

        /* Print variable 'recap'. */
        printf($recap, $count);

        /* Set a for loop through the trees tuple using tree as the element. */
        foreach ($trees as $tree)
        {
            /* Print the variable item and substitute an uppercase tree as */
            printf($item, strtoupper($tree));
        }
    }


    /* Else if option is equal to 'line':*/
    else if ($option == "line")
    {
        /* Print a newline. */
        echo "\n";

        /* Print variable 'line'. */
        echo $line;

        /* Print variable 'recap'. */
        printf($recap, $count);

        /* Print the joining of the elements of the trees tuple in one line. */
        /* Each tree should be fully uppercase. */
        echo implode(" * ", $trees) . "\n";
    }

    /* Else option ... should be impossible to reach. */
    else
    {
        echo "Impossible.\n";
    }
}






/* Else ... */


    /* Print "No trees listed." */


