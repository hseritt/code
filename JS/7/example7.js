#!/usr/bin/env node

'use strict';

function doSomething() {
    console.log("I am doing something.");
}

function doSomethingWith(num) {
    console.log("I am doing something with " + num);
}

function doSomethingAndReturn(num) {
    return num * 2;
}

function doSomethingWithOptions(num, num2) {
    if (num2) {
        return num * num2;
    } else {
        return num * 2;
    }
}

function doSomethingWithArguments() {
    var num1 = arguments[0],
        num2 = arguments[1],
        num3 = arguments[2];

    return num1 + num2 + num3;
}

function doSomethingWithObj() {
    var nums = arguments[0];
    var lucky = nums["lucky"];
    var unlucky = nums["unlucky"];

    console.log("Lucky: " + lucky + ", Unlucky: " + unlucky);
}


console.log("\nCalling doSomething() ...");
doSomething();

console.log("\nCalling doSomethingWith() ...");
doSomethingWith(7);

console.log("\nCalling doSomethingAndReturn() ...");
console.log(doSomethingAndReturn(7));

console.log("\nCalling doSomethingWithOptions() ...");
console.log(doSomethingWithOptions(7));
console.log(doSomethingWithOptions(7, 4));

console.log("\nCalling doSomethingWithArguments() ...");
console.log(doSomethingWithArguments(1, 3, 5));

console.log("\nCalling doSomethingWithObj() ...");
var nums = {"lucky": 7, "unlucky": 13};
doSomethingWithObj(nums);