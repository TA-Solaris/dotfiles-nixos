{ pkgs, lib, config, ... }:

{
  options = {
    gnome-config.enable = lib.mkEnableOption "Enable GNOME configuration";
  };

  config = lib.mkIf config.gnome-config.enable {
    home.file.".face" = {
      source = ./.face.png
    };
  };
}
