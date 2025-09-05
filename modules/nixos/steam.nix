{ pkgs, lib, config, ... }: {

  options = {
    steam.enable = lib.mkEnableOption "enable steam";
  };

  config = lib.mkIf config.steam.enable {
    environment.systemPackages = [
      pkgs.steam
    ];
  };

}
