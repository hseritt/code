#include <stdio.h>

int main(int argc, char *argv[])
{
    /* Declare variable 'num1' to be equal to 5. */
    int num1 = 5;

    /* Declare variable 'five' to be equal to "5". */
    char five = '5';
    char *five_str = "five";

    /* Print "The number is <<num1>>. Type of num1 is <<type of num1>>.
    Type of five is <<type of five>>. */
    printf(
        "The number is %d. Size of num1 is %ld. Size of five is %ld. Size of five_str is %ld.\n",
        num1, sizeof(num1), sizeof(five), sizeof(five_str));

    /* Declare variable num2 to be equal to 3. */
    int num2 = 3;

    /* Print "The sum of num1 and num2 is <<sum of num1 and num2>>." */
    printf("The sum of %d and %d is %d.\n", num1, num2, (num1 + num2));

    /* Set num3 to be equal to num1 minus num2. */
    int num3 = num1 - num2;

    /* Print "Subtracting <<num2>> from <<num1>> is <<num3>>." Use commas. */
    printf("Subtracting %d from %d is %d.\n", num2, num1, num3);

    /* Print "The product of <<num1>> and <<num2>> is <<num1 x num2>>. */
    printf("The product of %d and %d is %d.\n", num1, num2, (num1 * num2));

    /* Print a newline. */
    puts("");

    /* Declare variables 'fnum1' and 'fnum2'. Assign the value of 10.0 and 3.0
    to each one respectively. */
    double fnum1 = 10.0;
    double fnum2 = 3.0;

    /* Print "The division of <<fnum1>> by <<fnum2>> is
    <<fnum1 divided by fnum2.>> */
    printf("The division of %f by %f is %f.\n", fnum1, fnum2, (fnum1 / fnum2));

    /* Print "Too many zeros. How is this? <<fnum1 with no decimals>> divided by
    <<fnum2 with no decimal places>> is equal to <<fnum1 / fnum2 with one
    decimal place. */
    printf("Too many zeros. How about this?\n");
    printf("The division of %.0f by %.0f is %.2f.\n",
        fnum1, fnum2, (fnum1 / fnum2));

    /* Declare variable inum1 to be equal to int-casted fnum1. Declare
    variable inum2 to be equal to int-casted fnum2. */
    int inum1 = (int) fnum1;
    int inum2 = (int) fnum2;

    /* Print "The modulus of <<inum1>> and <<inum2>> is <<modulus of inum1
    and inum2>>. */
    printf("The modulus of %d and %d is %d.\n", inum1, inum2, (inum1 % inum2));

    /* Declare variable dollars to be equal to 10.0. */
    double dollars = 10.0;

    /* Print "I have only <<dollars with only 2 decimal places" to my name." */
    printf("I have only $%.2f to my name.\n", dollars);

    /* Print a newline. */
    puts("");

    /* Using 'if', check to see if num1 is not equal to num2. If so, print:
    "num1 (<<num1>>) and num2 (<<num2>>) are not equal." */
    if (num1 != num2)
    {
        printf("num1 (%d) and num2 (%d) are not equal.\n", num1, num2);
    }

    /* Using 'if', check to see if fnum1 divided by 2 is equal to num1. If so,
    print: "fnum1 (<<fnum1>>) divided by 2 is equal to num1 (<<num1>>)." */
    if (fnum1 / 2 == num1)
    {
        printf(
            "fnum1 (%f) divided by 2 is equal to num1 (%d).\n", fnum1, num1);
    }

    /* Using 'if', check to see if num2 is less than num1. If so, print:
    "num2 (<<num2>>) is less than num1 (<<num1>>)." */
    if (num2 < num1)
    {
        printf("num2 (%d) is less than num1 (%d).\n", num2, num1);
    }

    /* Print a newline. */
    puts("");

    /* Declare a variable called 'fact' to be equal to true. */
    int fact = 1;

    /* Declare a variable called 'opinion' to be equal to false. */
    int opinion = 0;

    /* Declare a variable called 'zero' to 0. */
    int zero = 0;

    /* Declare a variable called 'zero_decimal' to 0.0. */
    double zero_decimal = 0.0;

    /* Using 'if', check if fact is true. If so, print "The fact is
    <<fact>>" */
    if (fact)
    {
        puts("The fact is true.");
    }

    /* Using 'if', check if opinion is false. If so, print "Your opinion
    is <<opinion>>." */
    if (!opinion)
    {
        puts("Your opinion is false.");
    }

    /* Print an empty line with newline at the end. */
    puts("");

    /* Print "Is zero true or false? <<zero cast to boolean>>" */
    if (zero)
    {
        puts("Zero has no truth in itself.");
    }

    /* Print "Is zero_decimal true of false? <<zero_decimal case to boolean>>
    " */
    if (zero_decimal)
    {
        puts("zero_decimal has no truth either.");
    }

    /* Test 1. */
    if (1)
    {
        puts("1 always has the truth.\n");
    }

}