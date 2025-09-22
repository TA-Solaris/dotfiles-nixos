{ pkgs, lib, ... } : {
  
  imports = [
    ./terminal/darwin.nix
    ./system/darwin.nix
  ];
  
  #home-manager-terminal.enable = lib.mkDefault true;
  home-manager-system.enable = lib.mkDefault true;
  
}
