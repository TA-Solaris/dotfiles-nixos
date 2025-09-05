{ pkgs, lib, config, ... }: {

  options = {
    gallery-dl.enable = lib.mkEnableOption "enable gallery-dl";
  };

  config = lib.mkIf config.gallery-dl.enable {
    environment.systemPackages = [
      pkgs.gallery-dl
    ];
  };

}
