{ pkgs, lib, config, ... }: {

  options = {
    jellyfin.enable = lib.mkEnableOption "enable jellyfin";
  };

  config = lib.mkIf config.jellyfin.enable {
    environment.systemPackages = [
      pkgs.jellyfin
    ];
  };

}
