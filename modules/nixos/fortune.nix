{ pkgs, lib, config, ... }: {

  options = {
    fortune.enable = lib.mkEnableOption "enable fortune";
  };

  config = lib.mkIf config.fortune.enable {
    environment.systemPackages = [
      pkgs.fortune
    ];
  };

}
