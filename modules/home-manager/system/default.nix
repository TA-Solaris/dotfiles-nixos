{ pkgs, lib, config, ... }: {

  options = {
    home-manager-system.enable = lib.mkEnableOption "enable home-manager system";
  };
  
  imports = [
    ./git-config.nix
    ./gnome/dconf-config.nix
    ./gnome/gnome-config.nix
  ];

  config = lib.mkIf config.home-manager-system.enable {
    git-config.enable = lib.mkDefault true;
    dconf-config.enable = lib.mkDefault true;
    gnome-config.enable = lib.mkDefault true;
  };

}
