#!/usr/bin/env node

/*
See https://gist.github.com/joepie91/4f5b02135795feeb9df1c4279aa0159f
http://book.mixu.net/node/ch6.html
*/

var util = require('util');

function Animal(species) {
    this.species = species;
}

function Vertebrate(species) {
    this.has_backbone = true;
    Animal.apply(this, Array.prototype.slice.call(arguments));
}

Vertebrate.prototype.displayInfo = function (extraInfo, stype) {
    console.log(
        util.format(
            "A %s is a species of %s. Movement is: %s",
            this.species, stype, this.moves()));
    if (extraInfo) {
        console.log(util.format(
            "Skin: %s, Lays eggs?: %s, Warm-blooded?: %s, Has a backbone?: %s",
            this.outer, this.lay_eggs, this.is_warm_blooded, this.has_backbone));
    }
};

function Reptile(species) {
    this.outer = "scaly";
    this.lay_eggs = true;
    this.is_warm_blooded = false;
    Vertebrate.apply(this, Array.prototype.slice.call(arguments));
}

Reptile.prototype = new Vertebrate();
Reptile.prototype.displayInfo = function (extraInfo) {
    Vertebrate.prototype.displayInfo.call(this, extraInfo, "reptile");
};
Reptile.prototype.moves = function () {
    return "slithers or walks";
}

function Bird(species) {
    this.outer = "feathery";
    this.lay_eggs = true;
    this.is_warm_blooded = true;
    Vertebrate.apply(this, Array.prototype.slice.call(arguments));
}

Bird.prototype = new Vertebrate();
Bird.prototype.displayInfo = function (extraInfo) {
    Vertebrate.prototype.displayInfo.call(this, extraInfo, "bird");
};
Bird.prototype.moves = function () {
    return "flies or walks";
}

function Fish(species) {
    this.outer = "scaly";
    this.lay_eggs = true;
    this.is_warm_blooded = false;
    Vertebrate.apply(this, Array.prototype.slice.call(arguments));
}

Fish.prototype = new Vertebrate();
Fish.prototype.displayInfo = function (extraInfo) {
    Vertebrate.prototype.displayInfo.call(this, extraInfo, "fish");
};
Fish.prototype.moves = function () {
    return "swims";
}

var snake = new Reptile("sidewinder");
snake.displayInfo(true);
console.log("");

var bird = new Bird("sparrow");
bird.displayInfo(true);
console.log("");

var shark = new Fish("shark");
shark.displayInfo(true);
console.log("");