{ pkgs, lib, config, ... }: {

  options = {
    qtpass.enable = lib.mkEnableOption "enable qtpass";
  };

  config = lib.mkIf config.qtpass.enable {
    environment.systemPackages = [
      pkgs.qtpass
    ];
  };

}
