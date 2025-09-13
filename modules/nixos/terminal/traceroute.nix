{ pkgs, lib, config, ... }: {

  options = {
    traceroute.enable = lib.mkEnableOption "enable traceroute";
  };

  config = lib.mkIf config.traceroute.enable {
    environment.systemPackages = [
      pkgs.traceroute
    ];
  };

}
