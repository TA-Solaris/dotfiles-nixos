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
        ];
      };

      "org/gnome/shell/extensions/dash-to-dock" = {
        disable-overview-on-startup = true;
        hot-keys = false;
        show-trash = false;
        show-mounts = false;
        multi-monitor = true;
        dock-fixed = true;
        dock-position = "BOTTOM";
        intellihide-mode = "ALL_WINDOWS";
        dash-max-icon-size = 42;
      };

      "org/gnome/shell/extensions/rounded-window-corners-reborn" = {
        
      };

      "org/gnome/shell/extensions/just-perfection" = {
        
      };

      "org/gnome/shell/extensions/vitals" = {
        
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
      
      "org/gnome/shell/keybindings" = {
        show-screenshot-ui=["<Shift><Super>s"];
      };
    };
  };
}
