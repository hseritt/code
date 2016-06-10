public class Fish extends Vertebrate {

    public Fish() {
        this.outer = "scaly";
    }

    public Fish(String species) {
        this.outer = "scaly";
        this.setSpecies(species);
    }

    public boolean isWarmBlooded() {
        return false;
    }

    public String moves() {
        return "swims";
    }

    public void displayMore() {
        System.out.printf("Skin: %s, Lays eggs?: Possibly either, Warm-blooded?: %s, Has a backbone?: %s\n", this.outer, this.isWarmBlooded(), this.hasBackbone);
    }
}