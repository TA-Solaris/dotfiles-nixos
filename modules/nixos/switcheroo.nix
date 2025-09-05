{ pkgs, lib, config, ... }: {

  options = {
    switcheroo.enable = lib.mkEnableOption "enable switcheroo";
  };

  config = lib.mkIf config.switcheroo.enable {
    environment.systemPackages = [
      pkgs.switcheroo
    ];
  };

}
