{ pkgs, lib, config, ... }: {

  options = {
    constrict.enable = lib.mkEnableOption "enable constrict";
  };

  config = lib.mkIf config.constrict.enable {
    environment.systemPackages = [
      pkgs.constrict
    ];
  };

}
