#!/usr/bin/env bash

clear; reset;

dlist=(Bash C Java JS Perl PHP Python Ruby)

count=1

cat /dev/null > results.txt

while [ $count -lt 3 ]
do
    for d in ${dlist[@]}
    do
        scriptname="example${count}"
        echo "===============================================================" >> results.txt
        echo $d >> results.txt

        # echo "Changing directory to $d/$count ..."
        cd $d/$count

        case $d in
            Java)
                exe="java Example${count}"
                getver="java -version"
                ;;
            C)
                exe="./$scriptname"
                getver="gcc --version"
                ;;
            Bash)
                exe="./$scriptname.sh"
                getver="bash --version"
                ;;
            JS)
                exe="./$scriptname.js"
                getver="node --version"
                ;;
            Perl)
                exe="./$scriptname.pl"
                getver="perl -v"
                ;;
            PHP)
                exe="./$scriptname.php"
                getver="php --version"
                ;;
            Python)
                exe="./$scriptname.py"
                getver="python --version"
                ;;
            Ruby)
                exe="./$scriptname.rb"
                getver="ruby2 --version"
                ;;
            *)
                echo "Not finding a script we can test with in $d/$count"
        esac
        # pwd
        # echo "Script name should be $exe."
        # ls

        { time $exe; } &>> ../../results.txt
        $getver >> ../../results.txt 2>&1

        echo >> ../../results.txt

        cd ../..
    done
    ((count++))
done