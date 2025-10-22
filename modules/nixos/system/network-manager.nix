{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    network-manager.enable = lib.mkEnableOption "enables gnome";
  };

  config = lib.mkIf config.network-manager.enable {
    # Enable networking
    networking.networkmanager = {
      enable = true;
      plugins = with pkgs; [
        networkmanager-openvpn
        networkmanager-openconnect
        networkmanager_strongswan
      ];
    };
  };
}
