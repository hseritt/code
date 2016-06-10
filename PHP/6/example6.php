#!/usr/bin/env php

<?php
$outfile = "out.txt";

$text = "aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n";

echo "Writing to outfile ... \n";

$fh = fopen($outfile, "w") or die("Cannot open file: $outfile.\n");
fwrite($fh, $text);
fclose($fh);

echo "Reading the file line by line ...\n";
$fh = fopen($outfile, "r") or die("Cannot open file: $outfile.\n");
while (!feof($fh))
{
    $line = fgets($fh);
    echo "$line";
}
fclose($fh);

echo "Adding more text to outfile ...\n";
$more_text = "alsdkjfalfdkj\nalsdfjldfkj\n";

$fh = fopen($outfile, "a") or die("Cannot open file: $outfile.\n");
fwrite($fh, $more_text);
fclose($fh);

echo "Printing out all text from outfile ...\n";
$out = file_get_contents($outfile);
echo $out;