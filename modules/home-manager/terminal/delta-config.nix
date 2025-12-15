{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    delta-config.enable = lib.mkEnableOption "enables delta config";
  };

  config = lib.mkIf config.delta-config.enable {
    programs.delta = {
      enable = true;
      enableGitIntegration = true;
    };
  };
}
