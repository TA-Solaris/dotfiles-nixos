{ pkgs, lib, config, ... }: {

  options = {
    cmatrix.enable = lib.mkEnableOption "enable cmatrix";
  };

  config = lib.mkIf config.cmatrix.enable {
    environment.systemPackages = [
      pkgs.cmatrix
    ];
  };

}
