{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    messenger-brew.enable = lib.mkEnableOption "enable messenger brew";
  };

  config = lib.mkIf config.messenger-brew.enable {
    homebrew.casks = [
      "messenger"
    ];
  };
}
