#!/usr/bin/env node

'use strict';

var Object1 = function (n) {
    this.n = n;
}

var Object2 = function Object1(n) {
    this.field = true;
    this.n = n;

};

Object2.prototype.displayInfo = function(extraInfo) {
    console.log("Displaying info ...");
    if (extraInfo) {
        console.log("Displaying extra info ...");
    }
};

var object2 = new Object2("my name");
console.log(object2.n + ", " + object2.field + ".");
object2.displayInfo(true);

var Object3 = function Object3(n) {
    this.field = true;
    this.n = n;
};

Object3.prototype.displayInfo = function Object2.displayInfo() {};

var object3 = new Object3("another name");
object3.displayInfo();
