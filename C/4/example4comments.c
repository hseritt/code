/* Import the String array list and scanning class for user import. */



/* Create the class for this file. */


    /* Create the showUsage method. It takes a string var called option
    and returns nothing. */


        /* Print out: Unknown option <<option>>. Acceptable: list or line. */


        /* Exit program with status code of 0. */



    /* Create the main method. */


        /* Declare a string array list called allowableOptions. */


        /* Add strings "list" and "line" to allowableOptions. */



        /* Declare a string called option and assign "list" as the value. */


        /* Test args length for more than zero. */


            /* If so let option equal the first element of args. */



        /* Test to see if allowableOptions has a string with the value
        of option in it. */


            /* If so, call the showUsage method with option as
            the parameter. */



        /* Declare a string called line. It should contain many equal signs. */


        /* Declare a string called head. It should contain:
        /* "Enter a list of types of trees. One tree per prompt. Type
        <<string>> to quit.\n" */


        /* Declare a string called prompt. The value should be: "Enter: ". */


        /* Declare a string called recap. The value should be:
        "You entered <<integer>> trees:\n" */


        /* Declare a string called item. The value should be:
        "  * <<string>>\n". */


        /* Declare a string called term. The value should be: "X". */


        /* Print head with term as the formmatted string value. */


        /* Print out line var. */


        /* Declare a string array called trees. */


        /* Declare a string called trees. It should have empty strings as
        its value. */


        /* Declare an integer called count. Initialize it to zero. */


        /* Declare a new scanner class for user input. */


        /* Using while test to make sure that the lower case of tree does
        not equal the lower case of term. */


            /* Print prompt. */


            /* Assign the value of the user input to tree. */


            /* Add tree to the trees var. */


            /* Increment count by 1. */



        /* Remove the element equal to the lowercase of term from the
        trees var. */


        /* Decrement the value of count by one. */


        /* Using if, test that the size of trees is at least one or more. */


            /* Using if, test that option is equal to "list". */


                /* Print a newline. */


                /* Print line. */


                /* Print recap and use count as the formatted number value. */


                /* Create a for loop with t going through trees. */


                    /* Print out item and use the upper case value of t as
                    the formatted string value. */




            /* Using if, test that option is equal to "line". */


                /* Print a newline. */


                /* Print line. */


                /* Print recap and use count as the formatted number value. */


                /* Declare a string called out. Make it equal to trees
                /* which is being formatted like so:
                /* - convert to string
                /* - convert to upper case
                /* - replace all instances of \\[|\\] with "".
                /* - replace all instances of "," with " * ".
                */






                /* Print out. */



            /* Using else, print "Impossible". */





        /* Using else, print "No trees entered" and
        exit with status code of 0. */






