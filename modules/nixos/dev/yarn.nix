{ pkgs, lib, config, ... }: {

  options = {
    yarn.enable = lib.mkEnableOption "enable yarn";
  };

  config = lib.mkIf config.yarn.enable {
    environment.systemPackages = [
      pkgs.yarn
    ];
  };

}
