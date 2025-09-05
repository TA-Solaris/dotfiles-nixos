{ pkgs, lib, config, ... }: {

  options = {
    libreoffice.enable = lib.mkEnableOption "enable libreoffice";
  };

  config = lib.mkIf config.libreoffice.enable {
    environment.systemPackages = [
      pkgs.libreoffice
    ];
  };

}
