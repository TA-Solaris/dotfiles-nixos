{ pkgs, lib, config, ... }: {

  options = {
    lorem.enable = lib.mkEnableOption "enable lorem";
  };

  config = lib.mkIf config.lorem.enable {
    environment.systemPackages = [
      pkgs.lorem
    ];
  };

}
