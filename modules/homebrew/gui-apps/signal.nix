{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    signal-brew.enable = lib.mkEnableOption "enable signal brew";
  };

  config = lib.mkIf config.signal-brew.enable {
    homebrew.casks = [
      "signal"
    ];
  };
}
