/* Import the String array list and scanning class for user import. */
import java.util.;
import java.util.;

/* Create the class for this file. */
public
{
    /* Create the showUsage method. It takes a string var called option
    and returns nothing. */
    public void showUsage( option)
    {
        /* Print out: Unknown option <<option>>. Acceptable: list or line. */
        System.out.printf(
            "Unknow option \"%s\". Acceptable: list or line.\n", );
        /* Exit program with status code of 0. */
        System.(0);
    }

    /* Create the main method. */
    public (String args)
    {
        /* Declare a string array list called allowableOptions. */
        ArrayList<> allowableOptions = ArrayList<>();

        /* Add strings "list" and "line" to allowableOptions. */
        allowableOptions.("list");
        allowableOptions.("line");

        /* Declare a string called option and assign "list" as the value. */
        String option = "list";

        /* Test args length for more than zero. */
        if (args.length > 0)
        {
            /* If so let option equal the first element of args. */
            option = args[];
        }

        /* Test to see if allowableOptions has a string with the value
        of option in it. */
        if (! allowableOptions.(option))
        {
            /* If so, call the showUsage method with option as
            the parameter. */
            (option);
        }

        /* Declare a string called line. It should contain many equal signs. */
        String line = "===============================================================\n";

        /* Declare a string called head. It should contain:
        "Enter a list of types of trees. One tree per prompt. Type
        <<string>> to quit.\n" */
        String head = "Enter a list of types of trees. One tree per prompt. Type %s to quit.\n";

        /* Declare a string called prompt. The value should be: "Enter: ". */
        String prompt = "Enter: ";

        /* Declare a string called recap. The value should be:
        "You entered <<integer>> trees:\n" */
        String recap = "You entered %d trees:\n";

        /* Declare a string called item. The value should be:
        "  * <<string>>\n". */
        String item = "  * %s\n";

        /* Declare a string called term. The value should be: "X". */
        String term = "X";

        /* Print head with term as the formmatted string value. */
        System.out.printf(head, term);

        /* Print out line var. */
        System.out.printf(line);

        /* Declare a string array called trees. */
        <String> trees = new <String>();

        /* Declare a string called trees. It should have empty strings as
        its value. */
        String tree = "";

        /* Declare an integer called count. Initialize it to zero. */
        int count = 0;

        /* Declare a new scanner class for user input. */
        Scanner scanner = ();

        /* Using while test to make sure that the lower case of tree does
        not equal the lower case of term. */
        while (!tree.().(term.()))
        {
            /* Print prompt. */
            System.out.printf(prompt);

            /* Assign the value of the user input to tree. */
            tree = scanner.();

            /* Add tree to the trees var. */
            .(tree);

            /* Increment count by 1. */
            count
        }

        /* Remove the element equal to the lowercase of term from the
        trees var. */
        trees.(term.toLowerCase());

        /* Decrement the value of count by one. */
        count

        /* Using if, test that the size of trees is at least one or more. */
        if (trees.() > 0)
        {
            /* Using if, test that option is equal to "list". */
            if (option.("list"))
            {
                /* Print a newline. */
                System.out.println("");

                /* Print line. */
                System.out.printf(line);

                /* Print recap and use count as the formatted number value. */
                System.out.printf(recap, count);

                /* Create a for loop with t going through trees. */
                (t trees)
                {
                    /* Print out item and use the upper case value of t as
                    the formatted string value. */
                    System.out.printf(item, t.());
                }
            }

            /* Using if, test that option is equal to "line". */
            else if (option.("line"))
            {
                /* Print a newline. */
                System.out.println("");

                /* Print line. */
                System.out.printf(line);

                /* Print recap and use count as the formatted number value. */
                System.out.printf(recap, count);

                /* Declare a string called out. Make it equal to trees
                /* which is being formatted like so:
                /* - convert to string
                /* - convert to upper case
                /* - replace all instances of \\[|\\] with "".
                /* - replace all instances of "," with " * ".
                */
                String out = trees
                    .()
                    .()
                    .("\\[|\\]", "")
                    .(", "," * ");

                /* Print out. */
                System.out.println(out);
            }

            /* Using else, print "Impossible". */

            {
                System.out.println("Impossible");
            }
        }
        /* Using else, print "No trees entered" and
        exit with status code of 0. */

        {
            System.out.println("No trees entered.");
            System.exit(0);
        }
    }
}