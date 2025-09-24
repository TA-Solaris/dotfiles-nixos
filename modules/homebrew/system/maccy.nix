{ pkgs, lib, config, ... }: {

  options = {
    maccy-brew.enable = lib.mkEnableOption "enable maccy brew";
  };

  config = lib.mkIf config.maccy-brew.enable {
    homebrew.casks = [
      "maccy"
    ];
  };

}
