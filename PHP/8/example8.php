#!/usr/bin/env php

<?php

include_once('people.php');

foreach ($people as $p)
{
    echo "Person ...\n";

    foreach ($p as $k => $v)
    {
        echo "$k: " . $v . "\n";

        if ($k === "age")
        {
            $years_left = 65 - $v;
        }
    }

    echo "Years left: $years_left\n";

    echo "\n";

}

?>