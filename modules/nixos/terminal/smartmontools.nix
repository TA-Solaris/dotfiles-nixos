{ pkgs, lib, config, ... }: {

  options = {
    smartmontools.enable = lib.mkEnableOption "enable smartmontools";
  };

  config = lib.mkIf config.smartmontools.enable {
    environment.systemPackages = [
      pkgs.smartmontools
    ];
  };

}
