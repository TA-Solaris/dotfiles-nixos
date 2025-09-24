{ pkgs, lib, config, ... }: {

  options = {
    homebrew-dev.enable = lib.mkEnableOption "enable homebrew dev";
  };
  
  imports = [
    ./angular-cli.nix
    ./burp-suite.nix
    ./dbeaver-community.nix
    ./google-chrome.nix
    ./microsoft-edge.nix
  ];

  config = lib.mkIf config.homebrew-dev.enable {
    angular-cli-brew.enable = lib.mkDefault true;
    burp-suite-brew.enable = lib.mkDefault true;
    dbeaver-community-brew.enable = lib.mkDefault true;
    google-chrome-brew.enable = lib.mkDefault true;
    microsoft-edge-brew.enable = lib.mkDefault true;
  };

}
