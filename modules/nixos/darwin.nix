{ pkgs, lib, ... } : {
  
  imports = [
    ./gui-apps/darwin.nix
    ./dev/darwin.nix
    ./terminal/darwin.nix
    ./system/darwin.nix
  ];
  
  nixos-gui-apps.enable = lib.mkDefault true;
  nixos-dev.enable = lib.mkDefault true;
  nixos-terminal.enable = lib.mkDefault true;
  nixos-system.enable = lib.mkDefault true;
}
