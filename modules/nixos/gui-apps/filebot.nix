{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    filebot.enable = lib.mkEnableOption "enable filebot";
  };

  config = lib.mkIf config.filebot.enable {
    environment.systemPackages = [
      pkgs.filebot
    ];
  };
}
