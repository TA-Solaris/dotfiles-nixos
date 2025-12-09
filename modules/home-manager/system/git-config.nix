{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    git-config.enable = lib.mkEnableOption "enables git config";
  };

  config = lib.mkIf config.git-config.enable {
    programs.git = {
      enable = true;
      settings = {
        user = {
          name = "Edward Potter";
          email = "pottered2@gmail.com";
        };
        pull.rebase = true;
      };
    };
  };
}
