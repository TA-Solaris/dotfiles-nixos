{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    docker-darwin.enable = lib.mkEnableOption "enable docker on darwin";
  };

  config = lib.mkIf config.docker-darwin.enable {
    environment.systemPackages = [
      pkgs.docker
    ];
  };
}
