{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    obsidian.enable = lib.mkEnableOption "enable obsidian";
  };

  config = lib.mkIf config.obsidian.enable {
    environment.systemPackages = [
      # TODO - Remove this once build is fixed
      (pkgs.obsidian.override {electron = pkgs.electron_44;})
    ];
  };
}
