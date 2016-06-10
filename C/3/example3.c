/* Import the class for getting user input. */
#include <stdio.h>
#include <string.h>

#define MAX_DATA 100

/* Create the main method. */
int main(int argc, char argv[])
{
    /* Declare these variables: name, age, temp, skies. */
    char name[MAX_DATA];
    char age_str[MAX_DATA];
    char temp_str[MAX_DATA];
    char skies[MAX_DATA];

    /* Set the value for them as the ordinal cli arguments respectively. */
    /*
    *name = argv[1];
    *age_str =  argv[2];
    *temp_str = argv[3];
    *skies = argv[4];
    */

    char *buffer = NULL;
    /* Use variable name to get input from "Hi! What is your name?" */
    printf("Hi! What is your name? ");
    buffer = fgets(name, MAX_DATA - 1, stdin);

    /* Use variable age to get input from "How old are you?" */
    printf("How old are you? ");
    buffer = fgets(age_str, MAX_DATA - 1, stdin);

    /* Use variable temp to get input for "What is the temperature where
    /* you are?" */
    printf("What is the temperature where you are? ");
    buffer = fgets(temp_str, MAX_DATA - 1, stdin);

    /* Use variable skies to get input for "What are the skies like?
    /* Clear? Cloudy? Rainy?" */
    printf("What are the skies like? Clear? Cloudy? Rainy? ");
    buffer = fgets(skies, MAX_DATA - 1, stdin);

    /* Print a newline */
    puts("");

    size_t ln = strlen(name) - 1;

    name[ln] = '\0';
    skies[ln] = '\0';

    /* Print out "Well, hello <<name>>. It is nice to meet you." */
    printf("Well, hello %s. It is nice to meet you.\n", name);

    int age = atoi(age_str);
    int temp = atoi(temp_str);

    /* Write an if/else if/else structure that will test 'age'. If the age is
     under 21, print "My ... you are a young whippersnapper, aren't you?"
     If the age is under 31 print "You still have your life ahead of you, young
     man". If the age is under 61 print "Don't worry. You're still younger
     than you think." Else, print "You're getting on up there aren't you?" */

    if (age < 21)
    {
        printf("My ... you are a young whippersnapper, aren't you?\n");
    }
    else if (age < 31)
    {
        printf("You still have your life ahead of you.\n");
    }
    else if (age < 61)
    {
        printf("Don't worry. You're still younger than you think.\n");
    }
    else
    {
        printf("You're getting on up there aren't you?\n");
    }

    /* Print a newline */
    puts("");

    /* Print "The weather is still cool here despite it being the summer." */
    puts("The weather is still cool here despite it being the summer.");

    /* Print a newline */
    puts("");

    /* Write an if/else if/else structure to determine which temp string is
     assigned based on temperature like so:
     temp under 41: cold
     temp under 66: pleasant
     temp under 81: warm
     else? hot */
    if (temp <= 40)
    {
        strcpy(temp_str, "cold");
    }
    else if (temp <= 66)
    {
        strcpy(temp_str, "pleasant");
    }
    else if (temp <= 80)
    {
        strcpy(temp_str, "warm");
    }
    else
    {
        strcpy(temp_str, "hot");
    }

    int j;

    for(j = 0; skies[j]; j++)
    {
        skies[j] = tolower(skies[j]);
    }

    /* If the skies are clear and temp_str is pleasant or warm, print
     "Sounds nice there." */
    if (!strncmp(skies, "clear", 5)
        && (!strncmp(temp_str, "pleasant", 8) || !strncmp(temp_str, "warm", 4)))
    {
        puts("Sounds nice there.");
    }

    /* If the skies are clear and temp_str is cold, print "Sounds good but
     probably not a good day to go to the beach." */
    else if (!strncmp(skies, "clear", 5) && !strncmp(temp_str, "cold", 4))
    {
        puts("Sounds good but probably not a good day to go to the beach.");
    }

    /* If the skies are clear and temp_str is hot, print "Sounds like a nice day to go to the beach." */
    else if (!strncmp(skies, "clear", 5) && !strncmp(temp_str, "hot", 3))
    {
        puts("Sounds like a nice day to go to the beach.");
    }

    /* If the skies are cloudy and temp_str is cold or pleasant, print "Could be better but doesn't sound too bad." */
    else if (!strncmp(skies, "cloudy", 6) &&
        (!strncmp(temp_str, "cold", 4) || !strncmp(temp_str, "pleasant", 8)))
    {
        puts("Could be better but doesn't sound too bad.");
    }

    /* If the skies are cloudy and temp_str is warm, print "Sounds a little muggy." */
    else if(!strncmp(skies, "cloudy", 6) && !strncmp(temp_str, "warm", 4))
    {
        puts("Sounds a little muggy.");
    }

    /* If the skies are cloudy and temp_str is hot, print "Sounds very
     uncomfortable." */
    else if(!strncmp(skies, "cloudy", 6) && !strncmp(temp_str, "hot", 3))
    {
        puts("Sounds very uncomfortable.");
    }

    /* If the skies are rainy and temp_str is cold, print "Sounds like a bad day." */
    else if(!strncmp(skies, "rainy", 5) && !strncmp(temp_str, "cold", 4))
    {
        puts("Sounds like a bad day.");
    }

    /* If the skies are rainy and temp_str is pleasant or warm, print "You guys
     probably need the rain." */
    else if(!strncmp(skies, "rainy", 5) && (!strncmp(temp_str, "pleasant", 8) || !strncmp(temp_str, "warm", 4)))
    {
        puts("You guys probably need the rain.");
    }

    /* If the skies are rainy and temp_str is hot, print "Sounds like you are in a jungle." */
    else if (!strncmp(skies, "rainy", 5) && !strncmp(temp_str, "hot", 3))
    {
        puts("Sounds like you are in a jungle.");
    }

    /* Else, print "Don't know what to say." */
    else
    {
        puts("Don't know what to say.");
    }

    /* If skies are not rainy, print "At least it's dry there." */
    if (strncmp(skies, "rainy", 5))
    {
        puts("At least it's dry there.");
    }

    /* If skies are not cloudy or clear, print "Remember, showers bring
     May flowers." */
    if (!(strncmp(skies, "cloudy", 6) || strncmp(skies, "clear", 5)))
    {
        puts("Remember, showers bring May flowers.");
    }

     return 0;
}