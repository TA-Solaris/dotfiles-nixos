{ pkgs, lib, config, ... }: {
  
  options = {
    git-config.enable = lib.mkEnableOption "enables git config";
  };

  config = lib.mkIf config.git-config.enable {
    programs.git = {
      enable = true;
      userName = "Edward Potter";
      userEmail = "pottered2@gmail.com";
      
      extraConfig = {
        pull.rebase = true;
      };
    };
  };

}
