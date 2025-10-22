{ pkgs, lib, config, ... }: {

  options = {
    openvpn.enable = lib.mkEnableOption "enable openvpn";
  };

  config = lib.mkIf config.openvpn.enable {
    environment.systemPackages = [
      pkgs.openvpn
    ];
  };

}
