#!/usr/bin/env php

<?php

function display_names($name_list)
{
    echo "**************************************\n";
    foreach ($name_list as $name)
    {
        echo $name . "\n";
    }
    echo "\n";
}

function double_num($num)
{
    return $num * 2;
}

$names = ['Bob', 'Jack', 'Jill', 'Mike', 'John', 'Jim', 'Lisa'];
display_names($names);

$name_list = [];

foreach ($names as $name)
{
    array_push($name_list, $name);
}

display_names($name_list);

echo "Put Alfa at the front of the line ...\n";
array_unshift($name_list, "Alfa");
display_names($name_list);

echo "Remove Bob from the list ...\n";
unset($name_list[array_search("Bob", $name_list)]);
display_names($name_list);

echo "Remove the first and last elements ...\n";
$name_list = array_slice($name_list, 1, -1);
display_names($name_list);

echo "Clear the list ...\n";
$name_list = [];
display_names($name_list);

echo "Fill it with names again ...\n";
$name_list = $names;
display_names($name_list);

echo "The index of Mike is ...\n";
$index = array_search("Mike", $name_list);
echo $index . "\n\n";

echo "Get the count of 'Mike' in name_list ...\n";
$mikes = array_count_values($name_list);
print_r($mikes['Mike'] . "\n\n");

echo "Sort name_list by alphabetical order ...\n";
sort($name_list);
display_names($name_list);

echo "Reverse sort ...\n";
$reversed = array_reverse($name_list);
display_names($reversed);

echo "Slice the 2nd through 4th value ...\n";
$name_list = array_slice($name_list, 1, 3);
display_names($name_list);

echo "Inserting Charles at the 3rd position ...\n";
array_splice($name_list, 2, 0, "Charles");
display_names($name_list);

echo "Now removing Chares ...\n";
unset($name_list[2]);
display_names($name_list);

echo "Let's switch to numbers ...\n";
$num_list = [5, 7, 9, 2, 4, 6];
display_names($num_list);

echo "Now, let's double them ...\n";
$double_list = array_map("double_num", $num_list);
display_names($double_list);

echo "Let's do some sets and call it a day ...\n";
$fruits = ['banana', 'orange', 'apple', 'apple', 'grapes'];
$fruits = array_unique($fruits);
display_names($fruits);