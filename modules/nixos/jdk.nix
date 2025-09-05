{ pkgs, lib, config, ... }: {

  options = {
    jdk.enable = lib.mkEnableOption "enable jdk";
  };

  config = lib.mkIf config.jdk.enable {
    environment.systemPackages = [
      pkgs.jdk
    ];
  };

}
