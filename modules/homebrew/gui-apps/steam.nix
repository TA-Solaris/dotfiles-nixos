{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    steam-brew.enable = lib.mkEnableOption "enable steam brew";
  };

  config = lib.mkIf config.steam-brew.enable {
    homebrew.casks = [
      "steam"
    ];
  };
}
