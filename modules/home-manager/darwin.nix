{ pkgs, lib, ... } : {
  
  imports = [
    ./terminal/default.nix
    ./system/default.nix
  ];
  
  home-manager-terminal.enable = lib.mkDefault true;
  #git-config.enable = lib.mkDefault true; # TODO
  
}
