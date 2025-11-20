{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    discord-brew.enable = lib.mkEnableOption "enable discord brew";
  };

  config = lib.mkIf config.discord-brew.enable {
    homebrew.casks = [
      "discord"
    ];
  };
}
