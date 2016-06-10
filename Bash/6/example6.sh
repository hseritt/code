#!/usr/bin/env bash

echo "Writing to outfile ..."

outfile="out.txt"
text="aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n"
printf $text > $outfile

echo "Reading from outfile line by line ..."

while read -r line
do
    echo $line
done < $outfile

echo "Adding more text ..."
more_text="alsdkjfalfdkj\nalsdfjldfkj\n"
printf $more_text >> $outfile

echo "Reading all of the file ..."
cat $outfile