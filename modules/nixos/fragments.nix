{ pkgs, lib, config, ... }: {

  options = {
    fragments.enable = lib.mkEnableOption "enable fragments";
  };

  config = lib.mkIf config.fragments.enable {
    environment.systemPackages = [
      pkgs.fragments
    ];
  };

}
