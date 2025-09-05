{ pkgs, lib, config, ... }: {

  options = {
    signal.enable = lib.mkEnableOption "enable signal";
  };

  config = lib.mkIf config.signal.enable {
    environment.systemPackages = [
      pkgs.signal-desktop
    ];
  };

}
