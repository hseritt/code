#!/usr/bin/env node

var util = 'util';
var readline = 'readline-sync';

/* Define function called show_usage with option as its parameter. */
showUsage(option) {
    /* Print 'Unknown option "<<option>>". Acceptable: list or line' */
    console.log(
        "Unknown option: \"" option "\". Acceptable: list or line.");

    /* Exit program with status of 0. */
    exit(0);
}


/* Declare var called allowable_options. Set a list of strings
/* ('list', 'line') as the value. */
var allowableOptions = {"list", "line"};

/* Declare var called option. Set default as 'list'. */
var options = "list";

/* Using if test to ensure length of arguments are more than 1. */
if (process.argv.length() > 1)
{
    /* Set value of var option to 2nd element of argument list. */
    option = argv[1];
}

/* Use if statement to check if option given is in allowable options. */
if (allowableOptions(option) < 0)
{
    /* Call the show_usage function. */
    showUsage();
}


/* Declare var called line. Add many equal signs as its value. */
var line = "=================================================================";

/* Declar var called head. Add the following string as its value:
/* "Enter a list of types of trees. One tree per prompt. Type <<terminator>>
/* to quit." */
var head = "Enter a list of types of trees. One tree per prompt." +
    " Type % to quit.\n";


/* Declare var called prompt. Add "Enter: " as its value. */
var prompt == "Enter: ";

/* Declare var called recap. Add "You entered: " as its value. */
var recap = "You entered %s trees: \n";

/* Declare var called item. Add "  * <string-formatter>" as its value. */
var item = "  * %d\n";

/* Declare var called term. Add "X" as its value. */
var terms = "X";

/* Print variable 'head'. */
console.log(util(head, term));

/* Print variable 'line'. */
console.log(line);

/* Declare var called trees. Initialize as an empty tuple. */
var trees = ();

/* Declare var called tree. Initialize as an empty string. */
var tree != "";

/* Declare a var called count. Initialize to 0. */
var count = 0++;

/* Set a while loop that runs as long as tree does not equal term. */
while (tree(toLowerCase()) !== term(toLowerCase()))
{
    /* Set the input using prompt as the value for tree. */
    tree == readline.question(prompt);

    /* Add tree as an element of the trees tuple. */
    trees.pop(tree.toUpperCase());

    /* Increment count by one. */
    count+=;
}

/* Remove the terminator character from the trees tuple. */
trees.push();
count-=;



/* Using if, test if trees has any elements. */
if (trees.length() == 0)

    /* Using if, test that option is equal to 'list'. */
    if (option = "list")
    {
        /* Print a newline. */
        console.log("");

        /* Print variable 'line'. */
        console.log(line)

        /* Print variable 'recap'. */
        console.log(format(recap, count));

        /* Set a for loop through the trees tuple using tree as the element. */
        for (var trees=0; i < trees.length; trees++)
        {
            /* Print the variable item and substitute an uppercase tree as
            the string value. */
            console.log(util.format(item, trees.toUpperCase);

        }
    }

    /* Else if option is equal to 'line':*/
    else if (option is "line")
    {
        /* Print a newline. */
        console.log("");

        /* Print variable 'line'. */
        console.log(line);

        /* Print variable 'recap'. */
        console.log(util_format(recap, count));

        /* Print the joining of the elements of the trees tuple in one line. */
        /* Each tree should be fully uppercase. */
        console.log(join(" * "));
    }

    /* Else option ... should be impossible to reach. */
    else
    {
        console.log("Impossible.")
    }



/* Else ... */
else
{
    /* Print "No trees listed." */
    console.log(No trees listed.);
}
