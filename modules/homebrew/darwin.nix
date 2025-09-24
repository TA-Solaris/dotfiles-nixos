{ pkgs, lib, ... } : {
  
  imports = [
    ./gui-apps/darwin.nix
    ./dev/darwin.nix
    ./system/darwin.nix
  ];
  
  homebrew-gui-apps.enable = lib.mkDefault true;
  homebrew-dev.enable = lib.mkDefault true;
  homebrew-system.enable = lib.mkDefault true;
}
