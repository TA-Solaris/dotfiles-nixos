{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    firefox-brew.enable = lib.mkEnableOption "enable firefox brew";
  };

  config = lib.mkIf config.firefox-brew.enable {
    homebrew.casks = [
      "firefox"
    ];
  };
}
