{ pkgs, lib, config, ... }: {
  
  options = {
    atuin-config.enable = lib.mkEnableOption "enables atuin config";
  };

  config = lib.mkIf config.atuin-config.enable {
    programs.atuin = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };

}
