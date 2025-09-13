{ pkgs, lib, config, ... }: {

  options = {
    zenmap.enable = lib.mkEnableOption "enable zenmap";
  };

  config = lib.mkIf config.zenmap.enable {
    environment.systemPackages = [
      pkgs.zenmap
    ];
  };

}
