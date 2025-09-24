{ pkgs, lib, config, ... }: {

  options = {
    angular-cli-brew.enable = lib.mkEnableOption "enable angular-cli brew";
  };

  config = lib.mkIf config.angular-cli-brew.enable {
    homebrew.brews = [
      "angular-cli"
    ];
  };

}
