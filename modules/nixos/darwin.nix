{ pkgs, lib, ... } : {
  
  imports = [
    ./dev/darwin.nix
    ./terminal/darwin.nix
    ./system/darwin.nix
  ];
  
  #nixos-dev.enable = lib.mkDefault true; # TODO
  #nixos-terminal.enable = lib.mkDefault true;
  nixos-system.enable = lib.mkDefault true;
}
