{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    dconf-config.enable = lib.mkEnableOption "Enable GNOME dconf configuration";
  };

  config = lib.mkIf config.dconf-config.enable {
    dconf.enable = true;

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          pkgs.gnomeExtensions.appindicator.extensionUuid
          pkgs.gnomeExtensions.blur-my-shell.extensionUuid
          pkgs.gnomeExtensions.caffeine.extensionUuid
          pkgs.gnomeExtensions.clipboard-indicator.extensionUuid
          pkgs.gnomeExtensions.dash-to-dock.extensionUuid
          pkgs.gnomeExtensions.desktop-icons-ng-ding.extensionUuid
          pkgs.gnomeExtensions.just-perfection.extensionUuid
          pkgs.gnomeExtensions.panel-scroll.extensionUuid
          pkgs.gnomeExtensions.rounded-corners.extensionUuid
          pkgs.gnomeExtensions.rounded-window-corners-reborn.extensionUuid
          pkgs.gnomeExtensions.vitals.extensionUuid
          pkgs.gnomeExtensions.removable-drive-menu.extensionUuid
          pkgs.gnomeExtensions.screenshot-window-sizer.extensionUuid
          pkgs.gnomeExtensions.user-themes.extensionUuid
          pkgs.gnomeExtensions.alphabetical-app-grid.extensionUuid
        ];
        favorite-apps = [
          "Alacritty.desktop"
          "firefox.desktop"
          "org.gnome.Nautilus.desktop"
        ];
      };

      "org/gnome/desktop/interface" = {
        enable-hot-corners = false;
        accent-color = "green";
        clock-show-weekday = true;
        clock-show-seconds = true;
        show-battery-percentage = true;
        cursor-theme = "Nordzy-cursors";
        icon-theme = "Flatery-Teal";
        gtk-theme = "Orchis-Green-Light";
        font-name = "JetBrainsMono Nerd Font 11";
        document-font-name = "JetBrainsMono Nerd Font 11";
        monospace-font-name = "JetBrainsMono Nerd Font 11";
      };

      "org/gnome/mutter" = {
        workspaces-only-on-primary = false;
      };

      "org/gnome/shell/extensions/dash-to-dock" = {
        disable-overview-on-startup = true;
        hot-keys = false;
        show-trash = false;
        show-mounts = false;
        multi-monitor = true;
        dock-fixed = false;
        dock-position = "BOTTOM";
        intellihide = false;
        dash-max-icon-size = 42;
        custom-theme-shrink = true;
        apply-custom-theme = true;
      };

      "org/gnome/shell/extensions/caffeine" = {
        show-notifications = false;
      };

      "org/gnome/shell/extensions/clipboard-indicator" = {
        paste-button = false;
        notify-on-cycle = false;
        confirm-clear = false;
        enable-keybindings = false;
      };

      "org/gnome/shell/extensions/panelScroll" = {
        right = "workspace";
        left = "workspace";
      };

      "org/gnome/shell/extensions/just-perfection" = {
        support-notifier-type = 0;
        accessibility-menu = false;
        quick-settings-dark-mode = false;
        panel-notification-icon = false;
        workspace-wrap-around = true;
        startup-status = 0;
        animation = 4;
      };

      "org/gnome/shell/extensions/blur-my-shell/panel" = {
        blur = false;
      };

      "org/gnome/shell/extensions/vitals" = {
        position-in-panel = 0;
        show-battery = true;
        icon-style = 1;
        hot-sensors = [
          "_processor_usage_"
          "_memory_usage_"
          "__temperature_avg__"
          "_system_uptime_"
          "_battery_time_left_"
          "__network-rx_max__"
          "__network-tx_max__"
        ];
        fixed-widths = false;
      };

      "org/gtk/settings/file-chooser" = {
        location-mode = "path-bar";
        show-hidden = true;
      };

      "org/gtk/gtk4/settings/file-chooser" = {
        location-mode = "path-bar";
        show-hidden = true;
        view-type = "grid";
      };

      "org/gnome/desktop/notifications" = {
        show-banners = false; # Do not disturb
        show-in-lock-screen = false;
      };

      "org/gnome/shell/keybindings" = {
        show-screenshot-ui = ["<Shift><Super>s"];
        toggle-message-tray = [];
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        www = ["<Super>b"];
      };

      "org/gnome/desktop/wm/keybindings" = {
        close = ["<Super>x"];
        toggle-maximized = ["<Super>m"];
      };

      "org/gnome/desktop/privacy" = {
        remember-recent-files = false;
        remove-old-trash-files = true;
        remove-old-temp-files = true;
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        custom-keybindings = [
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        ];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        binding = "<Super>g";
        command = "alacritty";
        name = "alacritty";
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
        binding = "<Super>e";
        command = "nautilus";
        name = "nautilus";
      };

      "org/gnome/tweaks" = {
        show-extensions-notice = false;
      };

      "org/gnome/desktop/input-sources" = {
        xkb-options = ["caps:escape_shifted_capslock"];
      };

      "org/gnome/desktop/wm/preferences" = {
        button-layout = "appmenu:minimize,close";
        resize-with-right-button = true;
      };

      "org/gnome/desktop/background" = {
        picture-uri = "file:///home/ed/.dotfiles/modules/home-manager/system/gnome/.wallpaper/mojave.xml";
        picture-uri-dark = "file:///home/ed/.dotfiles/modules/home-manager/system/gnome/.wallpaper/mojave.xml";
      };

      "org/gnome/TextEditor" = {
        restore-session = false;
      };

      "org/gnome/shell/extensions/user-theme" = {
        name = "Orchis-Green-Light";
      };
      
      "org/gnome/settings-daemon/plugins/color" = {
        "night-light-schedule-from" = 5.0; # 5 am
        "night-light-schedule-to" = 4.9833333333333334; # 4:59 am
        "night-light-temperature" = 2400; # Don't think this is working
      };
    };
  };
}
