{ pkgs, lib, config, ... }: {

  options = {
    poetry.enable = lib.mkEnableOption "enable poetry";
  };

  config = lib.mkIf config.poetry.enable {
    environment.systemPackages = [
      pkgs.poetry
    ];
  };

}
