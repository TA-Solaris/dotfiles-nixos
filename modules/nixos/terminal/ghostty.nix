{ pkgs, lib, config, ... }: {

  options = {
    ghostty.enable = lib.mkEnableOption "enable ghostty";
  };

  config = lib.mkIf config.ghostty.enable {
    environment.systemPackages = [
      pkgs.ghostty
    ];
  };

}
