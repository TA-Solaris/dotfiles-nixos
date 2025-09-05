{ pkgs, lib, config, ... }: {

  options = {
    chromium.enable = lib.mkEnableOption "enable chromium";
  };

  config = lib.mkIf config.chromium.enable {
    environment.systemPackages = [
      pkgs.chromium
    ];
  };

}
