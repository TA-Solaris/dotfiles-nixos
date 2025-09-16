{ pkgs, lib, ... } : {
  
  imports = [
    ./terminal/default.nix
  ];
  
  #home-manager-terminal.enable = lib.mkDefault true;
  
}
