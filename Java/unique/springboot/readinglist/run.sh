#!/usr/bin/env bash

JAVA_HOME="/home/hseritt/Runtimes/Java/jdk1.8.0_91"
JAR_FILE="build/libs/readinglist-0.0.1-SNAPSHOT.jar"

### Do edit below this line ###
JAVA="${JAVA_HOME}/bin/java"
JAVA_CMD="${JAVA} -jar "

function success_message {
    echo ""
    echo "Gradle build succeeded. Now running Spring-Boot ..."
    echo "Control-C to stop ..."
    echo ""
}

function start {
    ${JAVA_CMD} ${JAR_FILE}
}

function fail_message {
    echo ""
    echo "Gradle build failed. Please investigate."
    echo ""
}

if [ "${JAVA_HOME}" == "" ]
then
    echo "JAVA_HOME not set."
    exit 1
fi

if [ "${JAR_FILE}" == "" ]
then
    echo "JAR_FILE not set."
    exit 1
fi

clear
reset

gradle build
gradle_build_status=$?

if [ ${gradle_build_status} -eq 0 ]
then
    success_message
    start
else
    fail_message
fi