{ pkgs, lib, config, ... }: {

  options = {
    shotcut-brew.enable = lib.mkEnableOption "enable shotcut brew";
  };

  config = lib.mkIf config.shotcut-brew.enable {
    homebrew.casks = [
      "shotcut"
    ];
  };

}
