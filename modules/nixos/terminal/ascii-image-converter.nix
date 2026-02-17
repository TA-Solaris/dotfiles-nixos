{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    ascii-image-converter.enable = lib.mkEnableOption "enable ascii-image-converter";
  };

  config = lib.mkIf config.ascii-image-converter.enable {
    environment.systemPackages = [
      pkgs.ascii-image-converter
    ];
  };
}
