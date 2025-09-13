{ pkgs, lib, ... } : {
  
  imports = [
    ./terminal/default.nix
    ./gui-apps/default.nix
    ./system/default.nix
  ];
  
  home-manager-terminal.enable = lib.mkDefault true;
  home-manager-gui-apps.enable = lib.mkDefault true;
  home-manager-system.enable = lib.mkDefault true;
  
}
