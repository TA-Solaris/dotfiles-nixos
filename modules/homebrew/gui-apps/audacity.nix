{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    audacity-brew.enable = lib.mkEnableOption "enable audacity brew";
  };

  config = lib.mkIf config.audacity-brew.enable {
    homebrew.casks = [
      "audacity"
    ];
  };
}
