{ pkgs, lib, config, ... }: {

  options = {
    gparted.enable = lib.mkEnableOption "enable gparted";
  };

  config = lib.mkIf config.gparted.enable {
    environment.systemPackages = [
      pkgs.gparted
    ];
  };

}
