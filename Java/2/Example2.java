public class Example2 {

    public static void main(String[] args) {

        /* Declare variable 'num1' to be equal to 5. */
        int num1 = 5;

        /* Declare variable 'five' to be equal to "5". */
        String five = "5";

        System.out.println("num1 is an integer and equal to " + num1);
        System.out.printf("five is a String and equal to %s.\n", five);

        /* Declare variable num2 to be equal to 3. */
        int num2 = 3;

        /* Print "The sum of num1 and num2 is <<sum of num1 and num2>>." */
        System.out.println("The sum of num1 and num2 is " +
            (num1 + num2) + ".");

        System.out.println("The concatenation of num1 and num2 is " +
            num1 + num2 + ".");

        System.out.println("Did you see the difference in the 2 lines above?");

        /* Set num3 to be equal to num1 minus num2. */
        int num3 = num1 - num2;

        /* Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas. */
        System.out.println(
            String.format(
                "Subtracting %d from %d leaves %d", num2, num1, num3));

        /* Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>. */
        System.out.printf(
            "The product of %d and %d is %d.\n", num1, num2, (num1 * num2));

        /* Print a newline. */
        System.out.println();

        /* Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
        to each one respectively. */
        double fnum1, fnum2;
        fnum1 = 10.0;
        fnum2 = 3.0;

        /* Print "The division of <<fnum1>> by <<fnum2>> is
        <<fnum1 divided by fnum2.>>" */
        System.out.println("The divivision of " + fnum1 + " by " + fnum2 +
            " is " + (fnum1 / fnum2) + ".");

        /* Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
        <<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
        decimal place. */
        System.out.printf(
            "Too many zeros. How is this instead? " +
            "%.0f / %.0f is equal to %.1f.\n"
            , fnum1, fnum2, (fnum1 / fnum2));

        /* Declare variable inum1 to be equal to int-casted fnum1. Declare
        variable inum2 to be equal to int-casted fnum2. */
        int inum1 = (int) fnum1;
        int inum2 = (int) fnum2;

        /* Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
        and inum2>>. */
        System.out.printf(
            "The modulus of %d and %d is %d.\n", inum1, inum2, inum1 % inum2);

        /* Declare variable dollars to be equal to 10.0. */
        double dollars = 10.0;

        /* Print "I have only <<dollars with only 2 decimal places" to my name." */
        System.out.println(
            String.format("I have only $%.2f to my name.", dollars));

        /* Print a newline. */
        System.out.println();

        /* Using 'if', check to see if num1 is not equal to num2. If so, print:
        "num1 (<<num1>>) and num2 (<<num2>>) are not equal." */
        if (num1 != num2) {
            System.out.printf("%d and %d are  not equal.\n", num1, num2);
        }

        /* Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
        print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)." */
        if (fnum1 / 2 == num1) {
            System.out.printf(
                "fnum1 (%f) divided by 2 is equal to num1 (%d).\n",
                fnum1, num1);
        }

        /* Using 'if', check to see if num2 is less than num1. If so, print:
        "num2 (<<num2>>) is less than num1 (<<num1>>)." */
        if (num2 < num1) {
            System.out.printf(
                "num2 (%d) is less than num1 (%d).\n", num2, num1);
        }

        /* Print a newline. */
        System.out.println();

        /* Declare a variable called 'fact' to be equal to true. */
        boolean fact = true;

        /* Declare a variable called 'opinion' to be equal to false. */
        boolean opinion = false;

        /* Using 'if', check if fact is true. If so, print "The fact is
        <<fact>>" */
        if (fact) {
            System.out.println("The fact is " + fact);
        }

        /* Using 'if', check if opinion is false. If so, print "Your opinion
        is <<opinion>>." */
        if (! opinion) {
            System.out.println("Your opinion is " + opinion);
        } else {
            System.out.println("I disagree with your opinion.");
        }

        /* Print an empty line with newline at the end. */
        System.out.println();

    }
}
