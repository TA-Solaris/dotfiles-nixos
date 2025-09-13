{ pkgs, lib, config, ... }: {
  
  options = {
    shell-aliases.enable = lib.mkEnableOption "enables shell aliases";
  };

  config = lib.mkIf config.shell-aliases.enable {
    home.shellAliases = {
      c = "clear";
      h = "cd ~";
      hc = "cd ~; clear;";
    };
  };

}
