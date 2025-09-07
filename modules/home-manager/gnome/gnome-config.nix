{ pkgs, lib, config, ... }:

let 
  flatery = pkgs.fetchFromGitHub {
    owner = "cbrnix";
    repo = "Flatery";
    tag = "Flatery";
    sha256 = "sha256-cOoID7ykJmu6ZVb6kQwgLZJ1Vr4HEuSxX84pZKTu+k4=";
  };
in
{
  options = {
    gnome-config.enable = lib.mkEnableOption "Enable GNOME configuration";
  };

  config = lib.mkIf config.gnome-config.enable {
    # PFP
    home.file.".face" = {
      source = ./.face.png;
    };
    
    home.file.".icons" = {
      source = "${flatery}";
    };
    
    services.gpg-agent.pinentry.program = "pinentry-gnome3";
    
    /*xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "audio/x-vorbis+ogg" = "org.gnome.Decibels.desktop";
        "audio/mpeg" = "org.gnome.Decibels.desktop";
        "audio/wav" = "org.gnome.Decibels.desktop";
        "audio/x-aac" = "org.gnome.Decibels.desktop";
        "audio/x-aiff" = "org.gnome.Decibels.desktop";
        "audio/x-ape" = "org.gnome.Decibels.desktop";
        "audio/x-flac" = "org.gnome.Decibels.desktop";
        "audio/x-m4a" = "org.gnome.Decibels.desktop";
        "audio/x-m4b" = "org.gnome.Decibels.desktop";
        "audio/x-mp1" = "org.gnome.Decibels.desktop";
        "audio/x-mp2" = "org.gnome.Decibels.desktop";
        "audio/x-mp3" = "org.gnome.Decibels.desktop";
        "audio/x-mpg" = "org.gnome.Decibels.desktop";
        "audio/x-mpeg" = "org.gnome.Decibels.desktop";
        "audio/x-mpegurl" = "org.gnome.Decibels.desktop";
        "audio/x-opus+ogg" = "org.gnome.Decibels.desktop";
        "audio/x-pn-aiff" = "org.gnome.Decibels.desktop";
        "audio/x-pn-au" = "org.gnome.Decibels.desktop";
        "audio/x-pn-wav" = "org.gnome.Decibels.desktop";
        "audio/x-speex" = "org.gnome.Decibels.desktop";
        "audio/x-vorbis" = "org.gnome.Decibels.desktop";
        "audio/x-wavpack" = "org.gnome.Decibels.desktop";
        "video/x-ogm+ogg" = "org.gnome.Totem.desktop";
        "video/3gp" = "org.gnome.Totem.desktop";
        "video/3gpp" = "org.gnome.Totem.desktop";
        "video/3gpp2" = "org.gnome.Totem.desktop";
        "video/dv" = "org.gnome.Totem.desktop";
        "video/divx" = "org.gnome.Totem.desktop";
        "video/fli" = "org.gnome.Totem.desktop";
        "video/flv" = "org.gnome.Totem.desktop";
        "video/mp2t" = "org.gnome.Totem.desktop";
        "video/mp4" = "org.gnome.Totem.desktop";
        "video/mp4v-es" = "org.gnome.Totem.desktop";
        "video/mpeg" = "org.gnome.Totem.desktop";
        "video/mpeg-system" = "org.gnome.Totem.desktop";
        "video/msvideo" = "org.gnome.Totem.desktop";
        "video/ogg" = "org.gnome.Totem.desktop";
        "video/quicktime" = "org.gnome.Totem.desktop";
        "video/vivo" = "org.gnome.Totem.desktop";
        "video/vnd.avi" = "org.gnome.Totem.desktop";
        "video/vnd.divx" = "org.gnome.Totem.desktop";
        "video/vnd.rn-realvideo" = "org.gnome.Totem.desktop";
        "video/vnd.vivo" = "org.gnome.Totem.desktop";
        "video/webm" = "org.gnome.Totem.desktop";
        "video/x-anim" = "org.gnome.Totem.desktop";
        "video/x-avi" = "org.gnome.Totem.desktop";
        "video/x-flc" = "org.gnome.Totem.desktop";
        "video/x-fli" = "org.gnome.Totem.desktop";
        "video/x-flic" = "org.gnome.Totem.desktop";
        "video/x-flv" = "org.gnome.Totem.desktop";
        "video/x-m4v" = "org.gnome.Totem.desktop";
        "video/x-matroska" = "org.gnome.Totem.desktop";
        "video/x-mjpeg" = "org.gnome.Totem.desktop";
        "video/x-mpeg" = "org.gnome.Totem.desktop";
        "video/x-mpeg2" = "org.gnome.Totem.desktop";
        "video/x-ms-asf" = "org.gnome.Totem.desktop";
        "video/x-ms-asf-plugin" = "org.gnome.Totem.desktop";
        "video/x-ms-asx" = "org.gnome.Totem.desktop";
        "video/x-msvideo" = "org.gnome.Totem.desktop";
        "video/x-ms-wm" = "org.gnome.Totem.desktop";
        "video/x-ms-wmv" = "org.gnome.Totem.desktop";
        "video/x-ms-wmx" = "org.gnome.Totem.desktop";
        "video/x-ms-wvx" = "org.gnome.Totem.desktop";
        "video/x-nsv" = "org.gnome.Totem.desktop";
        "video/x-theora" = "org.gnome.Totem.desktop";
        "video/x-theora+ogg" = "org.gnome.Totem.desktop";
        "video/x-totem-stream" = "org.gnome.Totem.desktop";
        "image/jpeg" = "org.gnome.Loupe.desktop";
        "image/png" = "org.gnome.Loupe.desktop";
        "image/gif" = "org.gnome.Loupe.desktop";
        "image/webp" = "org.gnome.Loupe.desktop";
        "image/tiff" = "org.gnome.Loupe.desktop";
        "image/x-tga" = "org.gnome.Loupe.desktop";
        "image/vnd-ms.dds" = "org.gnome.Loupe.desktop";
        "image/x-dds" = "org.gnome.Loupe.desktop";
        "image/bmp" = "org.gnome.Loupe.desktop";
        "image/vnd.microsoft.icon" = "org.gnome.Loupe.desktop";
        "image/vnd.radiance" = "org.gnome.Loupe.desktop";
        "image/x-exr" = "org.gnome.Loupe.desktop";
        "image/x-portable-bitmap" = "org.gnome.Loupe.desktop";
        "image/x-portable-graymap" = "org.gnome.Loupe.desktop";
        "image/x-portable-pixmap" = "org.gnome.Loupe.desktop";
        "image/x-portable-anymap" = "org.gnome.Loupe.desktop";
        "image/x-qoi" = "org.gnome.Loupe.desktop";
        "image/qoi" = "org.gnome.Loupe.desktop";
        "image/svg+xml" = "org.gnome.Loupe.desktop";
        "image/svg+xml-compressed" = "org.gnome.Loupe.desktop";
        "image/avif" = "org.gnome.Loupe.desktop";
        "image/heic" = "org.gnome.Loupe.desktop";
        "image/jxl" = "org.gnome.Loupe.desktop";
        "x-scheme-handler/http" = "firefox.desktop";
        "text/html" = "firefox.desktop";
        "application/xhtml+xml" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
      };
    };*/
  };
}
