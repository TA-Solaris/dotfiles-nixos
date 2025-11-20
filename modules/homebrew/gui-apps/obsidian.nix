{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    obsidian-brew.enable = lib.mkEnableOption "enable obsidian brew";
  };

  config = lib.mkIf config.obsidian-brew.enable {
    homebrew.casks = [
      "obsidian"
    ];
  };
}
