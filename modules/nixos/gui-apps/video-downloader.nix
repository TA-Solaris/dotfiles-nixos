{ pkgs, lib, config, ... }: {

  options = {
    video-downloader.enable = lib.mkEnableOption "enable video downloader";
  };

  config = lib.mkIf config.video-downloader.enable {
    environment.systemPackages = [
      pkgs.video-downloader
    ];
  };

}
