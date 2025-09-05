{ pkgs, lib, config, ... }: {

  options = {
    curtail.enable = lib.mkEnableOption "enable curtail";
  };

  config = lib.mkIf config.curtail.enable {
    environment.systemPackages = [
      pkgs.curtail
    ];
  };

}
