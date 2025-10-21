{ pkgs, lib, config, ... }:

{
  options = {
    gnupg-config.enable = lib.mkEnableOption "Enable gnupg configuration";
  };

  config = lib.mkIf config.gnupg-config.enable {    
    home.file.".gnupg/gpg-agent.conf" = {
      source = ./gpg-agent.conf;
    };
  };
}
