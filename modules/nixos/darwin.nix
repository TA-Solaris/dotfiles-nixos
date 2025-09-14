{ pkgs, lib, ... } : {
  
  imports = [
    ./dev/default.nix
    ./terminal/default.nix
    ./system/default.nix
  ];
  
  #nixos-dev.enable = lib.mkDefault true; # TODO
  nixos-terminal.enable = lib.mkDefault true;
  fonts.enable = lib.mkDefault true;
  git.enable = lib.mkDefault true;
  
}
