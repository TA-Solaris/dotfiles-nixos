{ pkgs, lib, ... } : {
  
  imports = [
    ./terminal/darwin.nix
  ];
  
  #home-manager-terminal.enable = lib.mkDefault true;
  
}
