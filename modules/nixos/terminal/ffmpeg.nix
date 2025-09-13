{ pkgs, lib, config, ... }: {

  options = {
    ffmpeg.enable = lib.mkEnableOption "enable ffmpeg";
  };

  config = lib.mkIf config.ffmpeg.enable {
    environment.systemPackages = [
      pkgs.ffmpeg
    ];
  };

}
