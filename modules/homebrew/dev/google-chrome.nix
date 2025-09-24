{ pkgs, lib, config, ... }: {

  options = {
    google-chrome-brew.enable = lib.mkEnableOption "enable google-chrome brew";
  };

  config = lib.mkIf config.google-chrome-brew.enable {
    homebrew.casks = [
      "google-chrome"
    ];
  };

}
