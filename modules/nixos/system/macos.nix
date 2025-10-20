{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    macos.enable = lib.mkEnableOption "enable macos config";
  };

  config = lib.mkIf config.macos.enable {
    # Asthetic
    system.defaults.controlcenter.BatteryShowPercentage = true;

    # Disable hot corners
    system.defaults.dock.wvous-bl-corner = 1;
    system.defaults.dock.wvous-br-corner = 1;
    system.defaults.dock.wvous-tl-corner = 1;
    system.defaults.dock.wvous-tr-corner = 1;

    # Dock
    system.defaults.dock.autohide = true;
    system.defaults.dock.show-recents = false;

    # Clock
    system.defaults.menuExtraClock.ShowSeconds = true;
    system.defaults.menuExtraClock.ShowDayOfWeek = true;
    system.defaults.menuExtraClock.Show24Hour = true;

    # Finder
    system.defaults.finder.ShowPathbar = true;
    system.defaults.finder.AppleShowAllExtensions = true;
    system.defaults.finder.AppleShowAllFiles = true;
    system.defaults.NSGlobalDomain.AppleShowAllFiles = true;
    system.defaults.NSGlobalDomain.AppleShowAllExtensions = true;

    # System
    system.defaults.SoftwareUpdate.AutomaticallyInstallMacOSUpdates = false;
    system.defaults.NSGlobalDomain.NSDisableAutomaticTermination = true;
    system.defaults.NSGlobalDomain.NSDocumentSaveNewDocumentsToCloud = false;
    system.defaults.NSGlobalDomain.AppleTemperatureUnit = "Celsius";
    system.defaults.NSGlobalDomain.AppleMeasurementUnits = "Centimeters";

    # Interaction
    system.defaults.NSGlobalDomain."com.apple.swipescrolldirection" = false; # Not "Natural"
    system.defaults.NSGlobalDomain.KeyRepeat = 6;
    system.defaults.NSGlobalDomain.InitialKeyRepeat = 6;
  };
}
