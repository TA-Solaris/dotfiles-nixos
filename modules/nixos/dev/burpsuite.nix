{ pkgs, lib, config, ... }: {

  options = {
    burpsuite.enable = lib.mkEnableOption "enable burpsuite";
  };

  config = lib.mkIf config.burpsuite.enable {
    environment.systemPackages = [
      pkgs.burpsuite
    ];
  };

}
