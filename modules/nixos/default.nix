{ pkgs, lib, ... } : {
  
  imports = [
    ./users/default.nix
    ./dev/default.nix
    ./terminal/default.nix
    ./gui-apps/default.nix
    ./system/default.nix
  ];
  
  nixos-users.enable = lib.mkDefault true;
  nixos-dev.enable = lib.mkDefault true;
  nixos-terminal.enable = lib.mkDefault true;
  nixos-gui-apps.enable = lib.mkDefault true;
  nixos-system.enable = lib.mkDefault true;
  
}
