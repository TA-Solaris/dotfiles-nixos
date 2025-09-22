{ pkgs, inputs, lib, ... }:

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
  #targets.darwin = {
  #  currentHostDefaults = "NSGlobalDomain";
  #};
  
  # InCyan Git
  git-config.enable = lib.mkForce false;
  programs.git = {
    enable = true;
    userName = "Edward Potter";
    userEmail = "ep@incyan.com";
      
    extraConfig = {
      pull.rebase = true;
    };
  };
}
