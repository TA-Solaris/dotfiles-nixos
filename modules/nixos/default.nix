{ pkgs, lib, ... } : {
  
  imports = [
    ./users/ed.nix
    ./gnome.nix
    ./pipewire.nix
    ./network-manager.nix
    ./fonts.nix
    ./dconf-config.nix
  ];
  
  users.ed.enable = lib.mkDefault true;
  gnome.enable = lib.mkDefault true;
  pipewire.enable = lib.mkDefault true;
  network-manager.enable = lib.mkDefault true;
  fonts.enable = lib.mkDefault true;
  dconf-config.enable = lib.mkDefault true;

}
