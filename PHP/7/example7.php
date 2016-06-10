#!/usr/bin/env php

<?php

function do_something() {
    echo "I am doing something.\n";
}


function do_something_with($num) {
    echo "I am doing somethig with " . $num . "\n";
}


function do_something_and_return($num) {
    return $num * 2;
}


function do_something_with_opt($num, $num2=null)
{
    if ($num2) {
        return $num * $num2;
    }
    return $num * 2;
}


function do_something_with_args($num, $num2=null)
{
    echo "Parameter: " . $num . "\n";
    if ($num) {
        echo "Parameter: " . $num2 . "\n";
    }
    echo "Parameter: " . func_get_arg(2) . "\n";
    echo "Parameter: " . func_get_arg(3) . "\n";
    echo "Parameter: " . func_get_arg(4) . "\n";
}


function do_something_plus($options)
{
    echo "Lucky number: " . $options["lucky"] . "\n";
    echo "Unlucky number: " . $options["unlucky"] . "\n";
}


echo "\nCalling doSomething() ...\n";
do_something();

echo "\nCalling do_something_with() ...\n";
do_something_with(7);

echo "\nCalling do_something_and_return() ...\n";
echo do_something_and_return(7) . "\n";

echo "\nCalling do_something_with_opt() ...\n";
echo do_something_with_opt(7) . "\n";
echo do_something_with_opt(7, 4) . "\n";

echo "\nCalling do_something_with_args() ...\n";
do_something_with_args(5, $num2=10, "eenie", "minie", "mo");
do_something_with_args(5, "eenie", "minie", "mo", "moo");

$extra_nums = ["lucky" => 7, "unlucky" => 13];
echo "\nCalling do_something_plus() ...\n";
do_something_plus($extra_nums);


?>