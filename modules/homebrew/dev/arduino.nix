{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    arduino-brew.enable = lib.mkEnableOption "enable arduino brew";
  };

  config = lib.mkIf config.arduino-brew.enable {
    homebrew.casks = [
      "arduino-ide"
    ];
  };
}
