{ pkgs, lib, config, ... }: {

  options = {
    ranger.enable = lib.mkEnableOption "enable ranger";
  };

  config = lib.mkIf config.ranger.enable {
    environment.systemPackages = [
      pkgs.ranger
    ];
  };

}
