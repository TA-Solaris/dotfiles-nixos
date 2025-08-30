{ pkgs, lib, ... } : {
  
  imports = [
    ./users/ed.nix
    ./gnome.nix
    ./pipewire.nix
    ./network-manager.nix
  ];
  
  users.ed.enable = lib.mkDefault true;
  gnome.enable = lib.mkDefault true;
  pipewire.enable = lib.mkDefault true;
  network-manage.enable = lib.mkDefault true;

}
