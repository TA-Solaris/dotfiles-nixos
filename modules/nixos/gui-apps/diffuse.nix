{ pkgs, lib, config, ... }: {

  options = {
    diffuse.enable = lib.mkEnableOption "enable diffuse";
  };

  config = lib.mkIf config.diffuse.enable {
    environment.systemPackages = [
      pkgs.diffuse
    ];
  };

}
