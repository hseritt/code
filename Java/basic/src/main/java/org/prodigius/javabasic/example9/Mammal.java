package org.prodigius.javabasic.example9;
public class Mammal extends Vertebrate {

    public Mammal() {
        this.outer = "furry";
        this.layEggs = false;
    }

    public boolean isWarmBlooded() {
        return true;
    }

    public String moves() {
        return "runs or walks";
    }
}