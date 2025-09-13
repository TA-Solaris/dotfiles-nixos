{ pkgs, lib, config, ... }: {

  options = {
    yt-dlp.enable = lib.mkEnableOption "enable yt-dlp";
  };

  config = lib.mkIf config.yt-dlp.enable {
    environment.systemPackages = [
      pkgs.yt-dlp
    ];
  };

}
