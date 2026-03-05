{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    tor-browser.enable = lib.mkEnableOption "enable tor browser";
  };

  config = lib.mkIf config.tor-browser.enable {
    environment.systemPackages = [
      pkgs.tor-browser
    ];
  };
}
