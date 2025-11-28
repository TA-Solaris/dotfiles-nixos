{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    inkscape-brew.enable = lib.mkEnableOption "enable inkscape brew";
  };

  config = lib.mkIf config.inkscape-brew.enable {
    homebrew.casks = [
      "inkscape"
    ];
  };
}
