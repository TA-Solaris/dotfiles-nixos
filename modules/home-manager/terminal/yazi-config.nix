{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    yazi-config.enable = lib.mkEnableOption "enable yazi config";
  };

  config = lib.mkIf config.yazi-config.enable {
    xdg.configFile."yazi/yazi.toml".text = ''
      [mgr]
      show_hidden = true
    '';
  };
}
