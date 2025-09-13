{ pkgs, lib, config, ... }: {

  options = {
    nixos-users.enable = lib.mkEnableOption "enable nixos users";
  };
  
  imports = [
    ./ed.nix
  ];

  config = lib.mkIf config.nixos-users.enable {
    users.ed.enable = lib.mkDefault true;
  };

}
