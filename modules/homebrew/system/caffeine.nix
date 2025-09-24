{ pkgs, lib, config, ... }: {

  options = {
    caffeine-brew.enable = lib.mkEnableOption "enable caffeine brew";
  };

  config = lib.mkIf config.caffeine-brew.enable {
    homebrew.casks = [
      "caffeine"
    ];
  };

}
