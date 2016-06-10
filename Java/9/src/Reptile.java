public class Reptile extends Vertebrate {

    public Reptile() {
        this.outer = "scaly";
        this.layEggs = true;
    }

    public Reptile(String species) {
        this.outer = "scaly";
        this.layEggs = true;
        this.setSpecies(species);
    }

    public boolean isWarmBlooded() {
        return false;
    }

    public String moves() {
        return "slithers or walks";
    }
}