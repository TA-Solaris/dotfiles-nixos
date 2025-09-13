{ pkgs, lib, config, ... }: {
  
  options = {
    atuin.enable = lib.mkEnableOption "enables atuin";
  };

  config = lib.mkIf config.atuin.enable {
    programs.atuin = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };

}
