#!/usr/bin/env bash

rm -rf src/*.class
rm -rf classes/*.class
javac -cp src -d classes src/Example9.java
java -cp classes Example9
