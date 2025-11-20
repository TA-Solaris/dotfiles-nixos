{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    nixos-gui-apps.enable = lib.mkEnableOption "enable nixos gui apps";
  };

  imports = [
    ./audacity.nix
    ./qtpass.nix
  ];

  config = lib.mkIf config.nixos-gui-apps.enable {
    audacity.enable = lib.mkDefault true;
    qtpass.enable = lib.mkDefault true;
  };
}
