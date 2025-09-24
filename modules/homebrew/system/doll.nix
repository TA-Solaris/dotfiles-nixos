{ pkgs, lib, config, ... }: {

  options = {
    doll-brew.enable = lib.mkEnableOption "enable doll brew";
  };

  config = lib.mkIf config.doll-brew.enable {
    homebrew.casks = [
      "doll"
    ];
  };

}
