{ pkgs, lib, config, ... }: {

  options = {
    home-manager-gui-apps.enable = lib.mkEnableOption "enable home-manager gui apps";
  };
  
  imports = [
    ./firefox-config.nix
  ];

  config = lib.mkIf config.home-manager-gui-apps.enable {
    firefox-config.enable = lib.mkDefault true;
  };

}
