{ pkgs, lib, config, ... }: {

  options = {
    burp-suite-brew.enable = lib.mkEnableOption "enable burp-suite brew";
  };

  config = lib.mkIf config.burp-suite-brew.enable {
    homebrew.casks = [
      "burp-suite"
    ];
  };

}
