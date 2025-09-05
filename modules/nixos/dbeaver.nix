{ pkgs, lib, config, ... }: {

  options = {
    dbeaver.enable = lib.mkEnableOption "enable dbeaver";
  };

  config = lib.mkIf config.dbeaver.enable {
    environment.systemPackages = [
      pkgs.dbeaver-bin
    ];
  };

}
