/* Import the String array list and scanning class for user import. */
import java.util.ArrayList;
import java.util.Scanner;

/* Create the class for this file. */
public class Example4Primitive
{
    /* Create the showUsage method. It takes a string var called option
    and returns nothing. */
    public static void showUsage(String option)
    {
        /* Print out: Unknown option <<option>>. Acceptable: list or line. */
        System.out.printf(
            "Unknown option \"%s\". Acceptable: list or line.\n", option);
        /* Exit program with status code of 0. */
        System.exit(0);
    }

    public static String upperCase(String word)
    {
        char[] charArr = word.toCharArray();
        for (int i=0; i < charArr.length; i++)
        {
            charArr[i] = Character.toUpperCase(charArr[i]);
        }
        String finishedWord = String.valueOf(charArr);
        return finishedWord;
    }

    public static String lowerCase(String word)
    {
        char[] charArr = word.toCharArray();
        for (int i=0; i < charArr.length; i++)
        {
            charArr[i] = Character.toLowerCase(charArr[i]);
        }
        String finishedWord = String.valueOf(charArr);
        return finishedWord;
    }

    public static String removeFirstChar(String word)
    {
        char[] charArr = word.toCharArray();
        char[] newCharArr = new char[charArr.length-1];
        for (int i=0; i < newCharArr.length; i++)
        {
            newCharArr[i] = charArr[i + 1];
        }
        String finishedWord = String.valueOf(newCharArr);
        return finishedWord;
    }

    /* Create the main method. */
    public static void main(String[] args)
    {
        /* Declare a string array list called allowableOptions. */
        String[] allowableOptions = {"list", "line"};

        /* Declare a string called option and assign "list" as the value. */
        String option = "list";

        /* Test args length for more than zero. */
        if (args.length > 0)
        {
            /* If so let option equal the first element of args. */
            option = args[0];
        }

        int isValid = 0;

        for (int i=0; i < allowableOptions.length; i++)
        {
            if (option.equals(allowableOptions[i]))
            {
                isValid = 1;
                break;
            }
        }

        if (isValid == 0)
        {
            showUsage(option);
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
        String[] trees = new String[100];

        /* Declare a string called trees. It should have empty strings as
        its value. */
        String tree = "";

        /* Declare an integer called count. Initialize it to zero. */
        int count = 0;

        /* Declare a new scanner class for user input. */
        Scanner scanner = new Scanner(System.in);

        /* Using while test to make sure that the lower case of tree does
        not equal the lower case of term. */
        while (!lowerCase(tree).equals(lowerCase(term)))
        {
            /* Print prompt. */
            System.out.printf(prompt);

            /* Assign the value of the user input to tree. */
            tree = scanner.next();

            /* Add tree to the trees var. */
            trees[count] = tree;

            /* Increment count by 1. */
            count++;
        }

        /* Remove the element equal to the lowercase of term from the
        trees var. */

        String[] cleanedTrees = new String[trees.length - 1];

        int trueTreesCount = 0;
        while (trees[trueTreesCount] != null)
        {
            trueTreesCount++;
        }

        for (int i=0; i < trueTreesCount - 1; i++)
        {
            cleanedTrees[i] = trees[i];
        }

        /* Decrement the value of count by one. */
        count--;

        /* Using if, test that the size of trees is at least one or more. */
        if (cleanedTrees.length > 0)
        {
            /* Using if, test that option is equal to "list". */
            if (option.equals("list"))
            {
                /* Print a newline. */
                System.out.println("");

                /* Print line. */
                System.out.printf(line);

                /* Print recap and use count as the formatted number value. */
                System.out.printf(recap, count);

                /* Create a for loop with t going through trees. */
                for (int i=0; i < trueTreesCount - 1; i++)
                {
                    /* Print out item and use the upper case value of t as
                    the formatted string value. */
                    System.out.printf(item, upperCase(cleanedTrees[i]));
                }
            }

            /* Using if, test that option is equal to "line". */
            else if (option.equals("line"))
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

                String out = "";
                for (int i=0; i < trueTreesCount - 1; i++)
                {
                    out += "* " + upperCase(cleanedTrees[i]) + " ";
                }

                /* Print out. */
                System.out.println(removeFirstChar(out));
            }

            /* Using else, print "Impossible". */
            else
            {
                System.out.println("Impossible");
            }
        }
        /* Using else, print "No trees entered" and
        exit with status code of 0. */
        else
        {
            System.out.println("No trees entered.");
            System.exit(0);
        }
    }
}