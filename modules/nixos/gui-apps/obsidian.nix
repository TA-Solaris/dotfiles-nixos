{ pkgs, lib, config, ... }: {

  options = {
    obsidian.enable = lib.mkEnableOption "enable obsidian";
  };

  config = lib.mkIf config.obsidian.enable {
    environment.systemPackages = [
      pkgs.obsidian
    ];
  };

}
