{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    prismlauncher-brew.enable = lib.mkEnableOption "enable prismlauncher brew";
  };

  config = lib.mkIf config.prismlauncher-brew.enable {
    homebrew.casks = [
      "prismlauncher"
    ];
  };
}
