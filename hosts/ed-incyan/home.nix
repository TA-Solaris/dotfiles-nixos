{ pkgs, inputs, ... }:

{
  imports = [
    ../../modules/home-manager/darwin.nix
  ];

  # Home Manager configuration
  home = {
    username = "edwardpotter";
    homeDirectory = "/Users/edwardpotter";
    stateVersion = "24.05";
  };

  # macOS-specific settings
  targets.darwin = {
    currentHostDefaults = "NSGlobalDomain";
  };
}
