{ pkgs, lib, config, ... }: {

  options = {
    gamemode.enable = lib.mkEnableOption "enable gamemode";
  };

  config = lib.mkIf config.gamemode.enable {
    environment.systemPackages = [
      pkgs.gamemode
    ];
  };

}
