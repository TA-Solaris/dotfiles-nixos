{ pkgs, lib, config, ... }: {

  options = {
    btop.enable = lib.mkEnableOption "enable btop";
  };

  config = lib.mkIf config.btop.enable {
    environment.systemPackages = [
      pkgs.btop
    ];
  };

}
