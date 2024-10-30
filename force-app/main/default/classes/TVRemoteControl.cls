public with sharing class TVRemoteControl {
    Integer volume;

    // Volumen to be modified
    static final Integer MAX_VOLUMEN = 50;
    
    // Constructor
    public TVRemoteControl(Integer v) {
        // Set the intial value for volume
        volume = v;
    }

    public Integer increaseVolume(Integer amount){
        volume += amount;
        if (volume > MAX_VOLUMEN) {
            volume = MAX_VOLUMEN;
        }
        
        return volume;
    }

    public Integer decreaseVolume(Integer amount) {
        volume -= amount;
        if (volume < 0) {
            volume = 0;
        }

        return volume;
    }

    public static String getMenuOptions() {
        return 'AUDIO SETTINGS - VIDEO SETTINGS';
    }

}