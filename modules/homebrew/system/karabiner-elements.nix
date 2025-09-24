{ pkgs, lib, config, ... }: {

  options = {
    karabiner-elements-brew.enable = lib.mkEnableOption "enable karabiner-elements brew";
  };

  config = lib.mkIf config.karabiner-elements-brew.enable {
    homebrew.casks = [
      "karabiner-elements"
    ];
  };

}
