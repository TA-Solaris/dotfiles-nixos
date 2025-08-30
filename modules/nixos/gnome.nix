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
    environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs gnome-console ];
  };

}
