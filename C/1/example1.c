#include <stdio.h>

int main(int argc, char *argv[])
{

    /*
    Print out: "This is a line. Note how the next line prints below this one."
    */
    puts("This is a line. Note how the next line prints below this one.");

    /*
    Print out: "Note how the next 'line' goes to the right. " but without
    a newline.
    */
    printf("Note how the next 'line' goes to the right. ");

    /*
    Print out: "Short line."
    */
    puts("Short line.");

    /*
    Print out: "Now we're back to a new line." Put a newline character at the
    end of the string.
    */
    puts("Now we're back to a new line.\n");

    /*
    Print out: "Did you see how this line skipped to a new one?"
    */
    puts("Did you see how this line skipped to a new one?");

    /*
    Declare three variables ('name', 'age' and 'half'). Assign your name
    to 'name', assign your age to 'age' and 0.5 to 'half.'
    */
    char *name = "My Name";
    int age = 48;
    double half = 0.5;

    /*
    Print out using string formatting:
    My name is, 'name'
    My age is, 'age'
    A half a cup is, 'half', of a full cup. <- Add a new line to this one.
    */
    printf("My name is %s\n", name);
    printf("My age is %d\n", age);
    printf("A half a cup is %f of a full cup.\n\n", half);

    /*
    Print out "About me and what I think about cups:". Insert a newline at the end.
    */
    puts("About me and what I think about cups:\n\n");

    /*
    Print out using the format method:
    My name is, 'name'
    My age is, 'age'
    A half a cup is, 'half', of a full cup. <- Add a new line to this one.
    Make sure each line starts with a tab.
    */
    printf("\tMy name is %s\n", name);
    printf("\tMy age is %d\n", age);
    printf("\tA half a cup is %f of a full cup.\n\n", half);

}