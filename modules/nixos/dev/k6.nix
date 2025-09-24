{ pkgs, lib, config, ... }: {

  options = {
    k6.enable = lib.mkEnableOption "enable k6";
  };

  config = lib.mkIf config.k6.enable {
    environment.systemPackages = [
      pkgs.k6
    ];
  };

}
