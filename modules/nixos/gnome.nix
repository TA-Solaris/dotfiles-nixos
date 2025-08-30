{ pkgs, lib, config, ... }: {
  
  options = {
    gnome.enable = lib.mkEnableOption "enables gnome";
  };

  config = lib.mkIf config.gnome.enable {
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    services.displayManager.gdm.enable = true;
    services.desktopManager.gnome.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "gb";
      variant = "";
    };
    
    # Removed packages
    environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs gnome-console geary epiphany yelp ];
    
    # Systray icons and extensions
    environment.systemPackages = [
      pkgs.gnomeExtensions.appindicator
      pkgs.gnomeExtensions.blur-my-shell
      pkgs.gnomeExtensions.caffeine
      pkgs.gnomeExtensions.clipboard-indicator
      pkgs.gnomeExtensions.dash-to-dock
      pkgs.gnomeExtensions.desktop-icons-ng
      pkgs.gnomeExtensions.just-perfection
      pkgs.gnomeExtensions.panel-scroll
      pkgs.gnomeExtensions.rounded-corners
      pkgs.gnomeExtensions.rounded-window-corners-reborn
      pkgs.gnomeExtensions.vitals
      pkgs.gnomeExtensions.removable-drive-menu
      pkgs.gnomeExtensions.screenshot-window-sizer
    ];
    services.udev.packages = [ pkgs.gnome-settings-daemon ];
    
    # Gnome games
    services.gnome.games.enable = true;
  };

}
