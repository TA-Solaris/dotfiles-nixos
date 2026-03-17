{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    colmena.enable = lib.mkEnableOption "enable colmena";
  };

  config = lib.mkIf config.colmena.enable {
    environment.systemPackages = [
      pkgs.colmena
    ];
  };
}
