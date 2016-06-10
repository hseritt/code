
public class Example9 {

    public static void main(String[] args) {

        Reptile snake = new Reptile("garden snake");
        snake.displayInfo(true);

        System.out.println("");

        Bird eagle = new Bird("bald eagle");
        eagle.displayInfo(true);

        System.out.println("");

        Fish shark = new Fish("great white shark");
        shark.displayInfo(true);

        System.out.println("");

        Mammal ape = new Mammal();
        ape.setSpecies("silver-back gorilla");
        ape.displayInfo();

        System.out.println("");

        Mammal dog = new Mammal();
        dog.displayInfo();

        System.out.println("");

        Amphibian frog = new Amphibian("bull frog");
        frog.displayInfo();
    }
}