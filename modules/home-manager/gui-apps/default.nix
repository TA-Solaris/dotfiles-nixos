{ pkgs, lib, config, ... }: {

  options = {
    home-manager-gui-apps.enable = lib.mkEnableOption "enable home-manager gui apps";
  };
  
  imports = [
    ./firefox.nix
  ];

  config = lib.mkIf config.home-manager-gui-apps.enable {
    firefox.enable = lib.mkDefault true;
  };

}
