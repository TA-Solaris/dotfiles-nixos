{ pkgs, lib, config, ... }: {
  
  options = {
    zoxide-config.enable = lib.mkEnableOption "enables zoxide config";
  };

  config = lib.mkIf config.zoxide-config.enable {
    programs.zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };

}
