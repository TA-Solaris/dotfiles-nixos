{ pkgs, inputs, ... }:

{
  imports = [
    ../../modules/nixos/darwin.nix
  ];

  # Set Git commit hash for darwin-version.
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;
  system.stateVersion = 6; # Darwin version

  # Hostname
  networking.hostName = "ed-incyan";

  # User
  users.users.edwardpotter = {
    home = "/Users/edwardpotter";
    packages = [
      pkgs.home-manager
    ];
  };
  system.primaryUser = "edwardpotter";
  
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
  #i18n.defaultLocale = "en_GB.UTF-8";

  # Extra Packages
  environment.systemPackages = [
    pkgs.slack
    pkgs._1password-gui
    pkgs._1password-cli
  ];

  homebrew = {
    enable = true;
    onActivation.cleanup = "uninstall";
    taps = [];
    brews = [ "angular-cli" "openvpn" "nvm" ];
    casks = [ "caffeine" "doll" "easy-move+resize" "karabiner-elements" "maccy" "rectangle" "gimp" "dbeaver-community" "libreoffice" "shotcut" "microsoft-edge" "openvpn-connect" "grammarly-desktop" "dotnet-sdk@8" ];
  };

  # Apple Silicon
  nixpkgs.hostPlatform = "aarch64-darwin";
}
