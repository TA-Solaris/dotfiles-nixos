{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    android-tools.enable = lib.mkEnableOption "enable android tools";
  };

  config = lib.mkIf config.android-tools.enable {
    environment.systemPackages = [
      pkgs.android-tools
    ];
  };
}
