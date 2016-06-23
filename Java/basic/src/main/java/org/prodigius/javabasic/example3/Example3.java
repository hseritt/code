package org.prodigius.javabasic.example3;

/* Import the class for getting user input. */
import java.util.Scanner;

/* Create the public class for this file. */
public class Example3
{
    /* Create the main method. */
    public static void main(String[] args)
    {
        /* Declare these variables: name, age, temp, skies. */
        String name;
        int age;
        int temp;
        String skies;

        /* Create a try block. */
        try
        {
            /* Set the value for them as the ordinal cli arguments respectively. */
            name = args[0];
            age = Integer.parseInt(args[1]);
            temp = Integer.parseInt(args[2]);
            skies = args[3];
        }

        /* Create the except/catch block to handle an error where args don't have
        /* the length you are expecting. */
        catch(ArrayIndexOutOfBoundsException e)
        {
            /* Declare and initialize the input class. */
            Scanner scanner = new Scanner(System.in);

            /* Use variable name to get input from "Hi! What is your name?" */
            System.out.println("Hi! What is your name?");
            name = scanner.next();

            /* Use variable age to get input from "How old are you?" */
            System.out.println("How old are you?");
            age = Integer.parseInt(scanner.next());

            /* Use variable temp to get input for "What is the temperature where
            /* you are?" */
            System.out.println("What is the temperature where you are?");
            temp = Integer.parseInt(scanner.next());

            /* Use variable skies to get input for "What are the skies like?
            /* Clear? Cloudy? Rainy?" */
            System.out.println(
                "What are the skies like there? Clear? Cloudy? Rainy? ");
            skies = scanner.next();
            
            scanner.close();
        }

        /* Print a newline */
        System.out.println();

        /* Print out "Well, hello <<name>>. It is nice to meet you." */
        System.out.println(
            "Well, hello " + name + ". It is nice to meet you.");

        /* Write an if/else if/else structure that will test 'age'. If the age is
         under 21, print "My ... you are a young whippersnapper, aren't you?"
         If the age is under 31 print "You still have your life ahead of you, young
         man". If the age is under 61 print "Don't worry. You're still younger
         than you think." Else, print "You're getting on up there aren't you?" */
         if (age <= 22)
         {
            System.out.println(
                "My ... you are a young whippersnapper aren't you?");
         }
         else if (age <= 30)
         {
            System.out.println("You still have your life ahead of you.");
         }
         else if (age <= 60)
         {
            System.out.println(
                "Don't worry. You're still younger than you think.");
         }
         else
         {
            System.out.println("You're getting on up there aren't you?");
         }

        /* Print a newline */
        System.out.println();

        /* Print "The weather is still cool here despite it being the summer." */
        System.out.println(
            "The weather is still cool here despite it being the summer.");

        /* Print a newline */
        System.out.println();

        /* Write an if/else if/else structure to determine which temp string is
         assigned based on temperature like so:
         temp under 41: cold
         temp under 66: pleasant
         temp under 81: warm
         else? hot */
        String tempStr;

        if (temp <= 40)
        {
            tempStr = "cold";
        }
        else if (temp <= 65)
        {
            tempStr = "pleasant";
        }
        else if (temp <= 80)
        {
            tempStr = "warm";
        }
        else
        {
            tempStr = "hot";
        }

        /* Clean skies variable to be set to lower case, have all whitespace
         stripped from both right and left. */
        String validSkies = skies.toLowerCase().trim();

        /* If the skies are clear and temp_str is pleasant or warm, print
         "Sounds nice there." */
        if (
            validSkies.equals("clear") && (
                tempStr.equals("pleasant") || tempStr.equals("warm")))
        {
            System.out.println("Sounds nice there.");
        }

        /* If the skies are clear and temp_str is cold, print "Sounds good but
         probably not a good day to go to the beach." */
        else if (validSkies.equals("clear") && tempStr.equals("cold"))
        {
            System.out.println(
                "Sounds good but probably not a good day to go to the beach.");
        }

        /* If the skies are clear and temp_str is hot, print "Sounds like a nice day
         to go to the beach." */
        else if (validSkies.equals("clear") && tempStr.equals("hot"))
        {
            System.out.println("Sounds like a nice day to go to the beach.");
        }

        /* If the skies are cloudy and temp_str is cold or pleasant, print "Could be
         better but doesn't sound too bad." */
         else if (validSkies.equals("cloudy") &&
            (tempStr.equals("cold") || (tempStr.equals("pleasant"))))
         {
            System.out.println("Could be better but doesn't sound too bad.");
         }

        /* If the skies are cloudy and temp_str is warm, print "Sounds a little muggy." */
        else if (validSkies.equals("cloudy") && tempStr.equals("warm"))
        {
            System.out.println("Sounds a little muggy.");
        }

        /* If the skies are cloudy and temp_str is hot, print "Sounds very
         uncomfortable." */
        else if (validSkies.equals("rainy") && tempStr.equals("cold"))
        {
            System.out.println("Sounds very uncomfortable.");
        }

        /* If the skies are rainy and temp_str is cold, print "Sounds like a bad day." */
        else if (validSkies.equals("rainy") && tempStr.equals("cold"))
        {
            System.out.println("Sounds like a bad day.");
        }

        /* If the skies are rainy and temp_str is pleasant or warm, print "You guys
         probably need the rain." */
        else if (validSkies.equals("rainy") &&
            (tempStr.equals("pleasant") || tempStr.equals("warm")))
        {
            System.out.println("You guys probably need the rain.");
        }

        /* If the skies are rainy and temp_str is hot, print "Sounds like you are in
         a jungle." */
        else if (validSkies.equals("rainy") && tempStr.equals("hot"))
        {
            System.out.println("Sounds like you are in a jungle.");
        }

        /* Else, print "Don't know what to say." */
        else
        {
            System.out.println("Don't know what to say.");
        }

        /* If skies are not rainy, print "At least it's dry there." */
        if (! validSkies.equals("rainy"))
        {
            System.out.println("At least it's dry there.");
        }

        /* If skies are not cloudy or clear, print "Remember, showers bring
         May flowers." */
         if (! (validSkies.equals("cloudy") || (validSkies.equals("clear"))))
         {
            System.out.println("Remember, showers bring May flowers.");
         }
    }
}