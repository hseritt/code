package org.prodigius.javabasic.example9;
public class Amphibian extends Vertebrate {

    public Amphibian() {
        this.outer = "slimy";
        this.layEggs = true;
    }

    public Amphibian(String species) {
        this.outer = "slimy";
        this.layEggs = true;
        this.setSpecies(species);
    }

    public boolean isWarmBlooded() {
        return false;
    }

    public String moves() {
        return "swim, jumps or walks";
    }

}