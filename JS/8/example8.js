#!/usr/bin/env node

'use strict';

const people = require('./people');

people.people.forEach( function (person) {

    console.log("Person ...");
    var yearsLeftTilRetire = 0;

    Object.keys(person).forEach( function(key) {

        console.log(key + ": " + person[key]);

        if (key === 'age')
        {
            var age;
            if (typeof person['age'] === 'string')
            {
                age = parseInt(person['age']);
            }
            else if (typeof person['age'] === 'number')
            {
                age = person['age'];
            }
            yearsLeftTilRetire = 65 - age;
        }

    });

    console.log("Years left: " + yearsLeftTilRetire);
    console.log("");
});