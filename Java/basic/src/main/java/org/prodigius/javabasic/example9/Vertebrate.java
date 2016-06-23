package org.prodigius.javabasic.example9;
public class Vertebrate extends Animal {

    public boolean hasBackbone = true;

    public String outer;
    public boolean layEggs;

    public void displayInfo(boolean extraInfo) {
        System.out.printf("A %s is a species of %s. Movement method: %s\n",
            this.getSpecies(), this.getClass().getName().toLowerCase(), this.moves());

        if (extraInfo) {
            this.displayMore();
        }
    }

    public void displayInfo() {
        System.out.printf("A %s is a species of %s. Movement method: %s\n",
            this.getSpecies(), this.getClass().getName().toLowerCase(), this.moves());
    }

    private void displayMore() {
        System.out.printf("Skin: %s, Lays eggs?: %s, Warm-blooded?: %s, Has a backbone?: %s\n", this.outer, this.layEggs, this.isWarmBlooded(), this.hasBackbone);
    }

    public String moves() {
        return "";
    }

    public boolean isWarmBlooded() {
        return true;
    }
}