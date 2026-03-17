{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    sops.enable = lib.mkEnableOption "enable sops";
  };

  config = lib.mkIf config.sops.enable {
    environment.systemPackages = [
      pkgs.sops
    ];
  };
}
