{ pkgs, lib, config, ... }: {

  options = {
    sl.enable = lib.mkEnableOption "enable sl";
  };

  config = lib.mkIf config.sl.enable {
    environment.systemPackages = [
      pkgs.sl
    ];
  };

}
