{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    electrum.enable = lib.mkEnableOption "enable electrum";
  };

  config = lib.mkIf config.electrum.enable {
    environment.systemPackages = [
      pkgs.electrum
    ];
  };
}
