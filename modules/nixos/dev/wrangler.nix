{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    wrangler.enable = lib.mkEnableOption "enable wrangler";
  };

  config = lib.mkIf config.wrangler.enable {
    environment.systemPackages = [
      #pkgs.wrangler # TODO - Fix
    ];
  };
}
