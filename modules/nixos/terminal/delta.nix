{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    delta.enable = lib.mkEnableOption "enable delta";
  };

  config = lib.mkIf config.delta.enable {
    environment.systemPackages = [
      pkgs.delta
    ];
  };
}
