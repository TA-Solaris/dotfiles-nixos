{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    imagemagick.enable = lib.mkEnableOption "enable imagemagick";
  };

  config = lib.mkIf config.imagemagick.enable {
    environment.systemPackages = [
      pkgs.ghostscript # Dependency for some reason not included
      pkgs.imagemagick
    ];
  };
}
