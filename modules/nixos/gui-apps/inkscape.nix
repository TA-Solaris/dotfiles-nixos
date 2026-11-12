{ pkgs, lib, config, ... }: {

  options = {
    inkscape.enable = lib.mkEnableOption "enable inkscape";
  };

  config = lib.mkIf config.inkscape.enable {
    environment.systemPackages = [
      pkgs.inkscape
    ];
  };

}
