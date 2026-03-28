{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    mkvtoolnix.enable = lib.mkEnableOption "enable mkvtoolnix";
  };

  config = lib.mkIf config.mkvtoolnix.enable {
    environment.systemPackages = [
      pkgs.mkvtoolnix
    ];
  };
}
