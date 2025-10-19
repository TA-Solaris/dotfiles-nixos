{ pkgs, lib, config, ... }:

{
  options = {
    karabiner-config.enable = lib.mkEnableOption "Enable karabiner configuration";
  };

  config = lib.mkIf config.karabiner-config.enable {    
    home.file.".config/karabiner" = {
      source = ./karabiner;
    };
  };
}
