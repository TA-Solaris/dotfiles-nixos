{ self, config, pkgs, inputs, ... }:

{
  imports = [
    #../../modules/nixos/darwin.nix
  ];

  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6; # Darwin version

  # Hostname
  networking.hostName = "ed-incyan";

  # Home Manager configuration
  #home-manager = {
  #  extraSpecialArgs = { inherit inputs; };
  #  users = {
  #    "edwardpotter" = import ./home.nix;
  #  };
  #};

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Time zone
  time.timeZone = "Europe/London";

  # Locale
  #i18n.defaultLocale = "en_GB.UTF-8";

  # Apple Silicon
  nixpkgs.hostPlatform = "aarch64-darwin";
}
