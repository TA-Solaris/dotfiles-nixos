{ pkgs, lib, config, ... }: {

  options = {
    clamtk.enable = lib.mkEnableOption "enable clamtk";
  };

  config = lib.mkIf config.clamtk.enable {
    environment.systemPackages = [
      pkgs.clamtk
    ];
  };

}
