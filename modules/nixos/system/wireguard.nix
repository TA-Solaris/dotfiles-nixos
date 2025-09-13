{ pkgs, lib, config, ... }: {

  options = {
    wireguard.enable = lib.mkEnableOption "enable wireguard";
  };

  config = lib.mkIf config.wireguard.enable {
    environment.systemPackages = [
      pkgs.wireguard-tools
    ];
  };

}
