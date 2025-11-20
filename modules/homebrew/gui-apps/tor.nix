{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    tor-brew.enable = lib.mkEnableOption "enable tor brew";
  };

  config = lib.mkIf config.tor-brew.enable {
    homebrew.casks = [
      "tor-browser"
    ];
  };
}
