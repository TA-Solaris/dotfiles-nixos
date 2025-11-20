{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    homebrew-dev.enable = lib.mkEnableOption "enable homebrew dev";
  };

  imports = [
    ./android-studio.nix
    ./angular-cli.nix
    ./arduino.nix
    ./burp-suite.nix
    ./dbeaver-community.nix
    ./google-chrome.nix
    ./microsoft-edge.nix
  ];

  config = lib.mkIf config.homebrew-dev.enable {
    android-studio-brew.enable = lib.mkDefault true;
    angular-cli-brew.enable = lib.mkDefault true;
    arduino-brew.enable = lib.mkDefault true;
    burp-suite-brew.enable = lib.mkDefault true;
    dbeaver-community-brew.enable = lib.mkDefault true;
    google-chrome-brew.enable = lib.mkDefault true;
    microsoft-edge-brew.enable = lib.mkDefault true;
  };
}
