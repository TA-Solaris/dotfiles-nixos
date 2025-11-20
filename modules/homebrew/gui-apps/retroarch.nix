{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    retroarch-brew.enable = lib.mkEnableOption "enable retroarch brew";
  };

  config = lib.mkIf config.retroarch-brew.enable {
    homebrew.casks = [
      "retroarch"
    ];
  };
}
