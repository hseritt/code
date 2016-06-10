#!/usr/bin/env node

'use strict';

function displayNames(nameList)
{
    console.log('************************************************');
    nameList.forEach( function (name) {
        console.log(name);
    });

    console.log("");
}

var names = ['Bob', 'Jack', 'Jill', 'Mike', 'John', 'Jim', 'Lisa'];
var nameList = [];

names.forEach( function(name) {
    nameList.push(name);
});
displayNames(nameList);

var moreNames = ['Mark', 'Matt', 'Luke', 'Juan', 'Jose'];
nameList = nameList.concat(moreNames);
console.log("More names ...");
displayNames(nameList);

console.log("Put Alfa at the front of the line ...");
nameList.splice(0, 0, "Alfa");
displayNames(nameList);

console.log("Remove Bob from the list ...");
nameList = nameList.filter(function(e) {return e !== "Bob"});
displayNames(nameList);

console.log("Remove the first and last elements ...");
nameList.splice(0, 1);
nameList.splice(-1, 1);
displayNames(nameList);

console.log("Clear the whole list ...");
nameList.splice(0, nameList.length);
displayNames(nameList);

console.log("Fill it with names again ...");
nameList = names;
displayNames(nameList);

console.log("Get the index of 'Mike' ...");
var index = nameList.indexOf('Mike');
console.log(index + "\n");

console.log("Get the count of Mike ...");
var count = nameList.filter(function(e) {return e === "Mike"}).length;
console.log(count);

console.log("Sort by alphabetical order ...");
nameList.sort();
displayNames(nameList);

console.log("Reverse sort ...");
nameList.reverse();
displayNames(nameList);

console.log('Slice the 2nd through 4th values ...')
nameList = nameList.slice(1, 4);
displayNames(nameList);

console.log('Inserting Charles at the 3rd position ...');
nameList.splice(2, 0, "Charles");
displayNames(nameList);

console.log("Now removing Charles by index ...");
nameList.splice(2, 1);
displayNames(nameList);

console.log("Let's switch to numbers ...");
var numList = [5, 7, 9, 2, 4, 6];
displayNames(numList);

console.log("Let's double them ...");
var doubleNums = numList.map(function(n) {return n * 2});
displayNames(doubleNums);

console.log("Ok, now on to sets ...");
var fruits = new Set(['banana', 'orange', 'apple', 'apple', 'grapes']);
displayNames(fruits);
