{ pkgs, lib, config, ... }: {
  
  options = {
    dconf.enable = lib.mkEnableOption "enables dconf";
  };

  config = lib.mkIf config.dconf.enable {
    dconf.enable = true;

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "blur-my-shell@aunet.github.com"
          "caffeine@patapon.info"
          "clipboard-indicator@tudmotu.com"
          "dash-to-dock@micxgx.gmail.com"
          "desktop-icons-ng@gnome-shell-extensions.gcampax.github.com"
          "just-perfection@just-perfection"
          "panel-scroll@tmo.io"
          "rounded-corners@gnome-shell-extensions.gcampax.github.com"
          "rounded-window-corners-reborn@tudmotu.com"
          "vitals@corecoding.com"
          "appindicator@systemd.org"
          "removable-drive-menu@gnome-shell-extensions.gcampax.github.com"
          "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com"
        ];
        
        app-menu-button-position = "left";
        
        # Setting the command history for the application runner.
        command-history = [
          "gnome-tweaks"
          "dconf-editor"
          "extensions-app"
        ];
      };

      "org/gnome/shell/extensions/dash-to-dock" = {
        show-apps-button = false;
        dock-position = "BOTTOM";
        icon-size-limit = 42;
        dock-fixed = true;
        dock-autohide = false;
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
        show-apps-button = false;
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
      
      # TODO
      #"com/github/stunkymonkey/nautilus-open-any-terminal" = {
        #terminal = "alacritty";
      #};
    };
  };

}
