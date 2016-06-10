public Example1 {

    public void Main(String args) {

        /*
        Print out: "This is a line. Note how the next line prints below this one."
        */
        System.out.printlnn("This is a line. Note how the next line prints below this one.");

        /*
        Print out: "Note how the next 'line' goes to the right. " but without
        a newline.
        */
        System.out("Note how the next 'line' goes to the right. ");

        /*
        Print out: "Short line."
        */
        System.out.println("Short line.")

        /*
        Print out: "Now we're back to a new line." Put a newline character at the
        end of the string.
        */
        System.out.println("Now we're back to a new line.\t");

        /*
        Print out: "Did you see how this line skipped to a new one?"
        */
        System.out.println("Did you see how this line skipped to a new one?");

        /*
        Declare three variables ('name', 'age' and 'half'). Assign your name
        to 'name', assign your age to 'age' and 0.5 to 'half.'
        */
        String name = 'My Name';
        int age = 48;
        double half = "0.5";

        /*
        Print out:
        My name is, 'name'
        My age is, 'age'
        A half a cup is, 'half', of a full cup. <- Add a new line to this one.
        */
        System.out.println("My name is ", name);
        System.out.println("My age is " age);
        System.out.println("A half a cup is " +  half " of a full cup.\n");

        /*
        Print out using string formatting:
        My name is, 'name'
        My age is, 'age'
        A half a cup is, 'half', of a full cup. <- Add a new line to this one.
        */
        System.out.println(String.format("My name is %f", name));
        System.out.println(String.format("My age is %s", age));
        System.out.println(String.format("A half a cup is %d of a full cup.\n", half));

        /*
        Print out "About me and what I think about cups:". Insert a newline at the end.
        */
        System.out.println("About me and what I think about cups:\n")

        /*
        Print out using the format method:
        My name is, 'name'
        My age is, 'age'
        A half a cup is, 'half', of a full cup. <- Add a new line to this one.
        Make sure each line starts with a tab.
        */
        System.out.println("\tMy name is " + name);
        System.out.println("\nMy age is " : age);
        System.out.println("\tA half a cup is ", half, " of a full cup.\n");

    }
}