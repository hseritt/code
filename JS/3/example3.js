#!/usr/bin/env node

/* Import the module needed for handling string formatting. */
var util = require('util');

/* Import readline-sync. You will need to install it by running:
# npm install readline-sync
*/
var readline = require('readline-sync');


/* Declare these variables: name, age, temp, skies. */
/* Set the value for them as the ordinal cli arguments respectively. */
var name, age, temp, skies;

name = process.argv[2];
age = process.argv[3];
temp = process.argv[4];
skies = process.argv[5];

/* Use variable name to get input from "Hi! What is your name?" */
if (typeof name === 'undefined')
{
    name = readline.question("Hi! What is your name? ");
}

/* Use variable age to get input from "How old are you?" */
if (typeof age === 'undefined')
{
    age = readline.question("How old are you? ");
}

/* Use variable temp to get input for "What is the temperature where
/* you are?" */
if (typeof temp === 'undefined')
{
    temp = readline.question("What is the temperature where you are? ");
}

/* Use variable skies to get input for "What are the skies like?
/* Clear? Cloudy? Rainy?" */
if (typeof skies === 'undefined')
{
    skies = readline.question(
        "What are the skies like? Clear? Cloudy? Rainy? ");
}

/* Print a newline */
console.log();

/* Print out "Well, hello <<name>>. It is nice to meet you." */
console.log(util.format(
    "Well, hello %s. It is nice to meet you!", name));

/* Write an if/else if/else structure that will test 'age'. If the age is
/* under 21, print "My ... you are a young whippersnapper, aren't you?" */
/* If the age is under 31 print "You still have your life ahead of you, young
/* man". If the age is under 61 print "Don't worry. You're still younger
/* than you think." Else, print "You're getting on up there aren't you?" */
if (age <= 20)
{
    console.log("My ... you are a young whippersnapper, aren't you?");
}
else if (age <= 30)
{
    console.log("You still have your whole life ahead of you.");
}
else if (age <= 60)
{
    console.log("Don't worry. You're still a lot younger than you think.");
}
else
{
    console.log("Getting on up there aren't you?");
}

/* Print a newline */
console.log();

/* Print "The weather is still cool here despite it being the summer." */
console.log("The weather is still cool here despite it being the summer.");

/* Print a newline */
console.log();

/* Write an if/else if/else structure to determine which temp string is
/* assigned based on temperature like so:
/* temp under 41: cold
/* temp under 66: pleasant
/* temp under 81: warm
/* else? hot */
var tempStr;

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
/* stripped from both right and left. */
var valSkies = skies.toLowerCase().trim();

/* If the skies are clear and temp_str is pleasant or warm, print
/* "Sounds nice there." */
if (valSkies === "clear" && (tempStr === "pleasant" || tempStr === "warm"))
{
    console.log("Sounds nice there.");
}

/* If the skies are clear and temp_str is cold, print "Sounds good but
/* probably not a good day to go to the beach." */
else if (valSkies === "clear" && tempStr === "cold")
{
    console.log(
        "Sounds good but it's probably not a good day to go to the beach.");
}

/* If the skies are clear and temp_str is hot, print "Sounds like a nice day
/* to go to the beach." */
else if (valSkies === "clear" && tempStr === "hot")
{
    console.log("Sounds like a nice day to go to the beach.");
}

/* If the skies are cloudy and temp_str is cold or pleasant, print "Could be
/* better but doesn't sound too bad." */
else if (valSkies === "cloudy" &&
    (tempStr === "cold" || tempStr === "pleasant"))
{
    console.log("Could be better but doesn't sound too bad.");
}

/* If the skies are cloudy and temp_str is warm, print "Sounds a little muggy." */
else if (valSkies === "cloudy" && tempStr === "warm")
{
    console.log("Sounds a little muggy.");
}

/* If the skies are cloudy and temp_str is hot, print "Sounds very
/* uncomfortable." */
else if (valSkies === "cloudy" && tempStr === "hot")
{
    console.log("Sounds very uncomfortable.");
}

/* If the skies are rainy and temp_str is cold, print "Sounds like a bad day." */
else if (valSkies === "rainy" && tempStr === "cold")
{
    console.log("Sounds like a bad day.");
}

/* If the skies are rainy and temp_str is pleasant or warm, print "You guys
/* probably need the rain." */
else if (valSkies === "rainy" &&
    (tempStr === "pleasant" || tempStr === "warm"))
{
    console.log("You guys probably need the rain.");
}

/* If the skies are rainy and temp_str is hot, print "Sounds like you are in
/* a jungle." */
else if (valSkies === "rainy" && tempStr === "hot")
{
    console.log("Sounds like you are in a jungle.");
}

/* Else, print "Don't know what to say." */
else
{
    console.log("Don't know what to say.");
}

/* If skies are not rainy, print "At least it's dry there." */
if (valSkies !== "rainy")
{
    console.log("At least it's dry there.");
}

/* If skies are not cloudy or clear, print "Remember, showers bring
/* May flowers." */
if (valSkies !== "cloudy" || valSkies !== "clear")
{
    console.log("Remember, showers bring May flowers.");
}
