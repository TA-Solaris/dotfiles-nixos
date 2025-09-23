{ pkgs, lib, config, ... }: {

  options = {
    nixos-gui-apps.enable = lib.mkEnableOption "enable nixos gui apps";
  };
  
  imports = [
    ./audacity.nix
    ./firefox.nix
  ];

  config = lib.mkIf config.nixos-gui-apps.enable {
    audacity.enable = lib.mkDefault true;
    firefox.enable = lib.mkDefault true;
  };

}
