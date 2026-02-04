{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    czkawka.enable = lib.mkEnableOption "enable czkawka";
  };

  config = lib.mkIf config.czkawka.enable {
    environment.systemPackages = [
      pkgs.czkawka-full
    ];
  };
}
