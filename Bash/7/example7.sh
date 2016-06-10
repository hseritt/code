#!/usr/bin/env bash

function do_something {
    echo "I am doing something."
}


function do_something_with {
    num=$1
    echo "I am doing something with $num."
}


function do_something_and_return {
    num=$1
    do_something_and_return_val=$((num * 2))
}


function do_something_optional {
    num1=$1
    num2=$2

    if [ ! $num2 ]
    then
        do_something_optional_val=$((num1 * 2))
    else
        do_something_optional_val=$((num1 * num2))
    fi

}

echo "Calling do_something() ..."
do_something
echo

echo "Calling do_something_with() ..."
do_something_with 7
echo

echo "Calling do_something_and_return() ..."
do_something_and_return 7
echo $do_something_and_return_val
echo

echo "Calling do_something_optional() ..."
do_something_optional 7
echo $do_something_optional_val
echo
do_something_optional 7 4
echo $do_something_optional_val
