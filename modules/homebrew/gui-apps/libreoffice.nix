{ pkgs, lib, config, ... }: {

  options = {
    libreoffice-brew.enable = lib.mkEnableOption "enable libreoffice brew";
  };

  config = lib.mkIf config.libreoffice-brew.enable {
    homebrew.casks = [
      "libreoffice"
    ];
  };

}
