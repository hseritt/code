package org.prodigius.javabasic.example9;
public class Bird extends Vertebrate {

    public Bird () {
        this.outer = "feathery";
        this.layEggs = true;
    }

    public Bird (String species) {
        this.outer = "feathery";
        this.layEggs = true;
        this.setSpecies(species);
    }

    public boolean isWarmBlooded() {
        return true;
    }

    public String moves() {
        return "flies or walks";
    }
}