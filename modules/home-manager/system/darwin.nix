{ pkgs, lib, config, ... }: {

  options = {
    home-manager-system.enable = lib.mkEnableOption "enable home-manager system";
  };
  
  imports = [
    ./git-config.nix
    ./karabiner/karabiner-config.nix
  ];

  config = lib.mkIf config.home-manager-system.enable {
    git-config.enable = lib.mkDefault true;
    karabiner-config.enable = lib.mkDefault true;
  };

}
