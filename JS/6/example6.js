#!/usr/bin/env node

'use strict';

var fs = require('fs');
var readline = require('readline');

var outfile = "out.txt";

var text = "aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n";

console.log("Writing to out file ...");

fs.writeFile(outfile, text, (err) => {
    if (err) throw err;
});

console.log("Reading from out file ...");

const rl = readline.createInterface({
    input: fs.createReadStream(outfile)
});

rl.on('line', (line) => {
    console.log('Line from file:', line);
});

console.log("Putting more text into outfile.");
var more_text = "alsdkjfalfdkj\nalsdfjldfkj\n";

fs.appendFile(outfile, more_text, (err) => {
    if (err) throw err;
});

console.log("Reading entire file content.");
function readWrap(callback) {
    fs.readFile(outfile, 'utf8', function (err, data) {
        if (err) return console.log(err);
        callback(null, data);
    });
}

readWrap(function (err, data) {
    console.log(data);
});

