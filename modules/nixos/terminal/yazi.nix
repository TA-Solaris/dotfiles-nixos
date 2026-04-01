{ pkgs, lib, config, ... }: {

  options = {
    yazi.enable = lib.mkEnableOption "enable yazi";
  };

  config = lib.mkIf config.yazi.enable {
    environment.systemPackages = [
      pkgs.yazi
      pkgs.ueberzugpp
    ];
  };

}
