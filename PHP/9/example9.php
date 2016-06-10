#!/usr/bin/env php

<?php

class Animal {

    function __construct($species=null) {

        $this->species = $species;

    }
}

class Vertebrate extends Animal {
    var $has_backbone = true;

    function display_info($show_extra=false) {
        printf("A %s is a species of %s. Movement method: %s\n",
            $this->species, get_class($this), $this->moves());

        if ($show_extra) {
            $this->display_more();
        }
    }

    private function display_more() {
        printf("Skin: %s, Lays Eggs?: %s, Warm-blooded?: %s, Has a backbone?: %s\n",
            $this->outer, $this->lay_eggs, $this->is_warm_blooded,
            $this->has_backbone);
    }
}

class Reptile extends Vertebrate {
    var $outer = "scaly";
    var $lay_eggs = true;
    var $is_warm_blooded = false;

    function moves() {
        return "slithers or walks";
    }
}

class Bird extends Vertebrate {
    var $outer = "feathery";
    var $lay_eggs = true;
    var $is_warm_blooded = true;

    function moves() {
        return "flies or walks";
    }
}

class Fish extends Vertebrate {
    var $outer = "scaly";
    var $lay_eggs = true;
    var $is_warm_blooded = false;

    function moves() {
        return "swims";
    }
}

class Mammal extends Vertebrate {
    var $outer = "furry";
    var $lay_eggs = false;
    var $is_warm_blooded = true;

    function moves() {
        return "walks or runs";
    }
}

class Amphibian extends Vertebrate {
    var $outer = "slimy";
    var $lay_eggs = true;
    var $is_warm_blooded = false;

    function moves() {
        return "swims or walks";
    }
}

$snake = new Reptile("sidewinder");
echo $snake->display_info(true);
echo "\n";

$chicken = new Bird("chicken");
echo $chicken->display_info(true);
echo "\n";

$shark = new Fish("great-white shark");
echo $shark->display_info(true);
echo "\n";

$dog = new Mammal("beagle");
echo $dog->display_info();
echo "\n";

$frog = new Amphibian("bull frog");
echo $frog->display_info(true);

try {
    echo $frog->display_more();
}
catch (Exception $e) {
    //echo "Exception: ", $e->getMessage(), "\n";
    echo "Can't use display_more() because it's a private method.\n";
}

echo "\n";

?>