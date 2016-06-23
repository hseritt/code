package org.prodigius.javabasic.example9;
public class Animal {

    private String species;


    public Animal() {

    }

    public Animal(String species) {
        setSpecies(species);
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public String getSpecies() {
        return this.species;
    }
}