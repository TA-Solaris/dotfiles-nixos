{ pkgs, lib, config, ... }: {

  options = {
    chrome.enable = lib.mkEnableOption "enable chrome";
  };

  config = lib.mkIf config.chrome.enable {
    environment.systemPackages = [
      pkgs.google-chrome
    ];
  };

}
