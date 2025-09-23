{ pkgs, lib, config, ... }: {

  options = {
    shotcut.enable = lib.mkEnableOption "enable shotcut";
  };

  config = lib.mkIf config.shotcut.enable {
    environment.systemPackages = [
      pkgs.shotcut
    ];
  };

}
