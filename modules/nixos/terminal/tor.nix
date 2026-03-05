{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    tor.enable = lib.mkEnableOption "enable tor";
  };

  config = lib.mkIf config.tor.enable {
    environment.systemPackages = [
      pkgs.tor
    ];

    services.tor = {
      enable = true;
      enableGeoIP = false;
      client = {
        enable = true;
      };
      relay = {
        enable = false;
      };
      settings = {
        CookieAuthentication = false;
      };
    };
  };
}
