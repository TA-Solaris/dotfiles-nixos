{ pkgs, lib, config, ... }: {

  options = {
    colima.enable = lib.mkEnableOption "enable colima";
  };

  config = lib.mkIf config.colima.enable {
    environment.systemPackages = [
      pkgs.colima
    ];
  };

}
