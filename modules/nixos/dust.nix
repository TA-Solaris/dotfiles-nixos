{ pkgs, lib, config, ... }: {

  options = {
    dust.enable = lib.mkEnableOption "enable dust";
  };

  config = lib.mkIf config.dust.enable {
    environment.systemPackages = [
      pkgs.dust
    ];
  };

}
