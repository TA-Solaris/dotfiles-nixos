{ pkgs, lib, config, ... }: {

  options = {
    arduino.enable = lib.mkEnableOption "enable arduino";
  };

  config = lib.mkIf config.arduino.enable {
    environment.systemPackages = [
      pkgs.arduino
    ];
  };

}
