{ pkgs, lib, config, ... }:

{
  options = {
    dconf-config.enable = lib.mkEnableOption "Enable GNOME dconf configuration";
  };

  config = lib.mkIf config.dconf-config.enable {
    dconf.enable = true;
    
    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "appindicatorsupport@rgcjonas.gmail.com"
          "blur-my-shell@aunetx"
          "caffeine@patapon.info"
          "clipboard-indicator@tudmotu.com"
          "dash-to-dock@micxgx.gmail.com"
          "ding@rastersoft.com"
          "just-perfection-desktop@just-perfection"
          "panel-scroll@sunwxg.github.com"
          "rounded-window-corners@fxgn"
          "rounded-corners@lennart-k"
          "vitals@CoreCoding.com"
          "removable-drive-menu@gnome-shell-extensions.gcampax.github.com"
          "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com"
        ];
      };

      "org/gnome/shell/extensions/dash-to-dock" = {
        dock-fixed = true;
        dock-position = "BOTTOM";
        dock-autohide = false;
        icon-size-limit = 42;
      };

      "org/gnome/shell/extensions/rounded-window-corners-reborn" = {
        custom-radius = true;
        corner-radius = 16;
        apply-to-maximized-windows = false;
      };

      "org/gnome/shell/extensions/just-perfection" = {
        accessibility = false;
        activities-button = false;
        app-menu = false;
        hot-corners = false;
      };

      "org/gnome/shell/extensions/vitals" = {
        show-temperature = true;
        show-voltage = false;
        show-fans = false;
      };

      "org/gtk/settings/file-chooser" = {
        location-mode = "path-bar";
        show-hidden = false;
      };

      "org/gtk/gtk4/settings/file-chooser" = {
        location-mode = "path-bar";
        show-hidden = true;
        view-type = "grid";
      };
    };
  };
}
