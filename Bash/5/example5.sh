#!/usr/bin/env bash

function display_names {
    echo "*********************************"
    list=("$@")
    for name in ${list[@]}
    do
        echo $name
    done
    echo ""
}

function get_index {
    list=("$@")
    e=$2

    count=0
    index=-1

    echo "list is ${list[@]}"

    for a in ${list[@]}
    do
        if [ "$e" == "$a" ]
        then

            index=$count
        fi
        ((count++))
    done

    get_index_result=$index
}

function get_count {
    list=("$@")
    e=$2

    count=0

    for a in ${list[@]}
    do
        if [ "$e" == "$a" ]
        then
            ((count++))
        fi
    done

    get_count_result=$count
}


names=("Bob" "Jack" "Jill" "Mike" "John" "Jim" "Lisa")
name_list=("Bob" "Jack" "Jill" "Mike" "John" "Jim" "Lisa")
display_names $name_list

echo "Let's add Alfa to the front of the line ..."
name_list="Alfa $name_list"
display_names $name_list

echo "Remove Bob from the array ..."
delete=("Bob")
name_list=(${name_list[@]/$delete})
display_names $name_list

echo "Remove the first and last elements ..."
unset name_list[${#name_list[@]}-1]
unset name_list[0]
display_names $name_list

echo "Clear the list ..."
name_list=()
display_names $name_list

echo "Fill the list with names again ..."
name_list=("${names[@]}")
display_names $name_list

echo "The index of 'Mike' is ..."
get_index $name_list "Mike"
echo "$get_index_result"

echo "Get the count of 'Mike' in name_list ..."
get_count $name_list "Mike"
echo "$get_count_result"

echo "Sort name_list by alphabetical order ..."
sorted_names=$(for name in  ${name_list[@]}; do echo $name; done |sort)
display_names $sorted_names

echo "Do a reverse sort ..."
sorted_names=$(for name in  ${name_list[@]}; do echo $name; done |sort -r)
display_names $sorted_names

echo "Quick display ..."
display_names ${name_list[@]}

echo "Slice the 2nd through 4th values ..."
sliced=("${name_list[@]:1:3}")
display_names ${sliced[@]}

echo "Let's switch to numbers ..."
numbers=(5 7 9 2 4 6)
display_names ${numbers[@]}