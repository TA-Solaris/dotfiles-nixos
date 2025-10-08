{ pkgs, lib, config, ... }: {

  options = {
    nixos-system.enable = lib.mkEnableOption "enable nixos system";
  };
  
  imports = [
    ./fonts-darwin.nix
    ./git.nix
    ./wireguard.nix
  ];

  config = lib.mkIf config.nixos-system.enable {
    fonts.enable = lib.mkDefault true;
    git.enable = lib.mkDefault true;
    wireguard.enable = lib.mkDefault true;
  };

}
