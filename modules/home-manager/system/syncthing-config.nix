{
  lib,
  config,
  ...
}: {
  options = {
    syncthing-config.enable = lib.mkEnableOption "enable syncthing config";
  };

  config = lib.mkIf config.syncthing-config.enable {
    services.syncthing = {
      enable = true;
    };
  };
}
