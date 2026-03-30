{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    thumbnailers.enable = lib.mkEnableOption "enables thumbnailers";
  };

  config = lib.mkIf config.thumbnailers.enable {
    # https://wiki.nixos.org/wiki/Thumbnails
    environment.pathsToLink = [
      "share/thumbnailers"
    ];

    environment.systemPackages = [
      pkgs.ffmpeg-headless
      pkgs.ffmpegthumbnailer
      pkgs.gdk-pixbuf
      # Allow gdk-pixbuf to thumbnail RAW photos by extracting the embedded jpeg
      (pkgs.writeTextFile {
        name = "raw-embedded-jpeg-thumbnailer";
        destination = "/share/thumbnailers/raw-embedded-jpeg.thumbnailer";
        text = ''
          [Thumbnailer Entry]
          TryExec=gdk-pixbuf-thumbnailer
          Exec=gdk-pixbuf-thumbnailer -s %s %u %o
          MimeType=image/x-canon-crw;image/x-canon-cr2;image/x-canon-cr3;image/x-adobe-dng;image/x-dng;
        '';
      })
      pkgs.libheif.bin # provides heif-thumbnailer (the program that generates HEIF thumbnails)
      pkgs.libheif.out # provides heif.thumbnailer (allows for the viewing of HEIF thumbnails)
      pkgs.libavif
      pkgs.libjxl
      pkgs.webp-pixbuf-loader
      pkgs.f3d
    ];
  };
}
