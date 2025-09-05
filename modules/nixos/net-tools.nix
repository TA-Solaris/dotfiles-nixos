{ pkgs, lib, config, ... }: {

  options = {
    net-tools.enable = lib.mkEnableOption "enable net-tools";
  };

  config = lib.mkIf config.net-tools.enable {
    environment.systemPackages = [
      pkgs.net-tools
    ];
  };

}
