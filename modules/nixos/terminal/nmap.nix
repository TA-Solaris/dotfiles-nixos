{ pkgs, lib, config, ... }: {

  options = {
    nmap.enable = lib.mkEnableOption "enable nmap";
  };

  config = lib.mkIf config.nmap.enable {
    environment.systemPackages = [
      pkgs.nmap
    ];
  };

}
