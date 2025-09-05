{ pkgs, lib, config, ... }: {

  options = {
    wget.enable = lib.mkEnableOption "enable wget";
  };

  config = lib.mkIf config.wget.enable {
    environment.systemPackages = [
      pkgs.wget
    ];
  };

}
