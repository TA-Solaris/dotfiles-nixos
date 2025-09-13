{ pkgs, lib, config, ... }: {

  options = {
    spotify.enable = lib.mkEnableOption "enable spotify";
  };

  config = lib.mkIf config.spotify.enable {
    environment.systemPackages = [
      pkgs.spotify
    ];
  };

}
