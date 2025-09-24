{ pkgs, lib, config, ... }: {

  options = {
    rectangle-brew.enable = lib.mkEnableOption "enable rectangle brew";
  };

  config = lib.mkIf config.rectangle-brew.enable {
    homebrew.casks = [
      "rectangle"
    ];
  };

}
