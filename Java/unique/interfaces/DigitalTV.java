public class DigitalTV implements Television {

    private String language;
    private int volume;
    private int channel;

    public int getChannel() {
        return this.channel;
    }

    public void setChannel(int channel) {
        this.channel = channel;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getLanguage() {
        return this.language;
    }

    public int getVolume() {
        return this.volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public DigitalTV() {

    }

}