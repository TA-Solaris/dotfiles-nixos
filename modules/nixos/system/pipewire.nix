{ pkgs, lib, config, ... }: {

  options = {
    pipewire.enable = lib.mkEnableOption "enable pipewire";
  };

  config = lib.mkIf config.pipewire.enable {
    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
    };
    
    # Enable ALSA support with persistence
    hardware.alsa.enablePersistence = true;
    
    # Utils
    environment.systemPackages = with pkgs; [
      alsa-utils
      pavucontrol
    ];
  };

}
