{ pkgs, lib, config, ... }: {

  options = {
    tor.enable = lib.mkEnableOption "enable tor";
  };

  config = lib.mkIf config.tor.enable {
    environment.systemPackages = [
      pkgs.tor-browser
    ];
  };

}
