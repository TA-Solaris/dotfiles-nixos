{ pkgs, lib, config, ... }: {
  
  options = {
    zoxide.enable = lib.mkEnableOption "enables zoxide";
  };

  config = lib.mkIf config.zoxide.enable {
    programs.zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };

}
