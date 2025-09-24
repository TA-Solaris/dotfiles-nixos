{ pkgs, lib, config, ... }: {

  options = {
    easy-move-resize-brew.enable = lib.mkEnableOption "enable easy-move-resize brew";
  };

  config = lib.mkIf config.easy-move-resize-brew.enable {
    homebrew.casks = [
      "easy-move+resize"
    ];
  };

}
