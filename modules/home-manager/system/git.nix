{ pkgs, lib, config, ... }: {
  
  options = {
    git.enable = lib.mkEnableOption "enables git";
  };

  config = lib.mkIf config.git.enable {
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
