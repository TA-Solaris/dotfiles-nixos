{ pkgs, lib, config, ... }: {

  options = {
    ghex.enable = lib.mkEnableOption "enable ghex";
  };

  config = lib.mkIf config.ghex.enable {
    environment.systemPackages = [
      pkgs.ghex
    ];
  };

}
