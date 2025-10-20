{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    syncthing.enable = lib.mkEnableOption "enable syncthing";
  };

  config = lib.mkIf config.syncthing.enable {
    environment.systemPackages = [
      pkgs.syncthing
    ];
  };
}
