{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    android-studio-brew.enable = lib.mkEnableOption "enable android-studio brew";
  };

  config = lib.mkIf config.android-studio-brew.enable {
    homebrew.casks = [
      "android-studio"
    ];
  };
}
