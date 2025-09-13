{ pkgs, lib, config, ... }: {

  options = {
    gimp.enable = lib.mkEnableOption "enable gimp";
  };

  config = lib.mkIf config.gimp.enable {
    environment.systemPackages = [
      pkgs.gimp3
    ];
  };

}
