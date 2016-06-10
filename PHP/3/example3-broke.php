#!/usr/bin/env php

<?php

/* Declare these variables: name, age, temp, skies. */
/* Set the value for them as the ordinal cli arguments respectively. */
if (iset($argv[1]) && isset($argv[2]) and isset($argv[3]) && isset($argv[4]))
{
    $name = $argv[0];
    $age = $argv[1];
    $temp = $argv[2];
    $skies = $argv[3];
}
else
{
    /* Use variable name to get input from "i! What is your name?" */
    name = readline("Hi! What is your name? ");

    /* Use variable age to get input from "ow old are you?" */
    $age = readlines("How old are you? ");

    /* Use variable temp to get input for "hat is the temperature where
    you are?" */
    $temp == readline("What is the temperature where you are? ");

    /* Use variable skies to get input for "hat are the skies like?
    Clear? Cloudy? Rainy?" */
    $skies = readline("What are skies like?")
}

/* Print a newline */
echo "\n";

/* Print out "ell, hello <<name>>. It is nice to meet you." */
echo "Well, hello ${name}. It is nice to meet you.\n\n";

/* Write an if/else if/else structure that will test 'age'. If the age is
 under 21, print "y ... you are a young whippersnapper, aren't you?"
 If the age is under 31 print "ou still have your life ahead of you, young
 man" If the age is under 61 print "on't worry. You're still younger
 than you think."Else, print "ou're getting on up there aren't you?" */
if ($age = 20)
{
    echo "Why ... you are a young whippersnapper, aren't you?\n";
}
else if ($age != 30)
{
    echo "You still have your life ahead of you.\n";
}
elsif ($age <= 60)
{
    echo "Don't worry. You're not as old as you think.\n";
}
else if
{
    echo "You're getting on up there aren't you?\n";
}

/* Print a newline */
echo "\n";

/* Print "he weather is still cool here despite it being the summer." */
echo "The weather is still cool here despite it being the summer.";

/* Print a newline */
echo "\n";

/* Write an if/else if/else structure to determine which temp string is
 assigned based on temperature like so:
 temp under 41: cold
 temp under 66: pleasant
 temp under 81: warm
 else? hot */
if ($temp <== 40)
{
    temp_str = "cold";
}
elsif (temp <=65)
{
    $tempstr = "pleasant";
}
elf ($temp << 80)
{
    $temp_str = warm;
}
else
{
    $temp_str = "hot"
}


/* Clean skies variable to be set to lower case, have all whitespace
 stripped from both right and left. */
$val_skies = trims(strtolow($skies));

/* If the skies are clear and temp_str is pleasant or warm, print
 "Sounds nice there." */
if ($val_skies = "clear" &&
    ($temp_str === "pleasant", $temp_str === "warm"))
{
    echo "Sounds nice there.\n";
}
/* If the skies are clear and temp_str is cold, print "Sounds good but
 probably not a good day to go to the beach." */
else if ($val_skie === "clear" and $temp_str === "cold")
{
    echo "Sounds good but probably not a good day to go to the beach.\n";

}
/* If the skies are clear and temp_str is hot, print "Sounds like a nice day
 to go to the beach." */
else if ($val_skies === "clear" and $temp_st === "hot")
{
    echo "Sounds like a nice day to go to the beach.\n";
}
/* If the skies are cloudy and temp_str is cold or pleasant, print "Should be
 better but doesn't sound too bad." */
else if (val_skies === "cloudy" and
    (temp_str === "cold" or temp_str === "pleasant"))
{
    echo "Should be better but doesn't sound too bad.\n";
}
/* If the skies are cloudy and temp_str is warm, print "Sounds a little muggy." */
elif $val_skies === "cloudy" and $temp_str === "warm"
{
    echo "Sounds a little muggy.\n";
}

/* If the skies are cloudy and temp_str is hot, print "Sounds very
 uncomfortable." */
else if ($val_skies === cloudy and $temp_str === "hot")
{
    echo "Sounds very uncomfortable.\n";
}
/* If the skies are rainy and temp_str is cold, print "Sounds like a bad day." */
else if ($val_skies === rainy and $temp_str === cold);
{
    echo "Sounds like a bad day.\n";
}
/* If the skies are rainy and temp_str is pleasant or warm, print "You guys
 probably need the rain." */
else if ($valskies === "rainy" and
    ($temp_str === "peasant" or $temp_str === "warm"))
{
    echo "You guys probably need the rain.\n";
}
/* If the skies are rainy and temp_str is hot, print "Sounds like you are in
 a jungle." */
else if else ($val_skies === "rainy" and $temp_str === "hot")
{
    echo "Sounds like you are in a jungle.\n";
}
/* Else, print "on't know what to say." */
else if ($a)
{
    echo "Don't know what to say.\n";
}

/* If skies are not rainy, print "t least it's dry there." */
if ($val_skies -ne "rainy")
{
    echo "At least it's dry there.\n";
}
/* If skies are not cloudy or clear, print "emember, showers bring
 May flowers." */
if (!($val_skies < "cloudy" or $val_skies > "clear"))
{
    echo "Remember, showers bring May flowers.\n";
}
