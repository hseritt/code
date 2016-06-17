public class Main {
    public static void main(String[] args) {

        DigitalTV tv = new Television();
        tv.setChannel(46);
        tv.setVolume(20);
        tv.setLanguage("US English");

        System.out.println("The TV is one.");
        System.out.println("Channel: " + tv.getChannel());
        System.out.println("Volume: " + tv.getVolume());
        System.out.println("Language: " + tv.getLanguage());

    }
}