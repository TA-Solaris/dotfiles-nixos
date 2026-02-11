{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    ripmime.enable = lib.mkEnableOption "enable ripmime";
  };

  config = lib.mkIf config.ripmime.enable {
    environment.systemPackages = [
      pkgs.ripmime
    ];
  };
}
