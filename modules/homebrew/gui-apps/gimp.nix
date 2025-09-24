{ pkgs, lib, config, ... }: {

  options = {
    gimp-brew.enable = lib.mkEnableOption "enable gimp brew";
  };

  config = lib.mkIf config.gimp-brew.enable {
    homebrew.casks = [
      "gimp"
    ];
  };

}
