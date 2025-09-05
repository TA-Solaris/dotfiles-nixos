{ pkgs, lib, config, ... }: {

  options = {
    nodejs.enable = lib.mkEnableOption "enable nodejs";
  };

  config = lib.mkIf config.nodejs.enable {
    environment.systemPackages = [
      pkgs.nodejs_24
    ];
  };

}
