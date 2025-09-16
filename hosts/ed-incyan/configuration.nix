{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/nixos/darwin.nix
  ];

  system.stateVersion = 4; # Darwin version

  # Hostname
  networking.hostName = "ed-incyan";

  # Home Manager configuration
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "edwardpotter" = import ./home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Time zone
  time.timeZone = "Europe/London";

  # Locale
  i18n.defaultLocale = "en_GB.UTF-8";

  # Apple Silicon
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Enable services that work on macOS
  services.nix-daemon.enable = true;
}
