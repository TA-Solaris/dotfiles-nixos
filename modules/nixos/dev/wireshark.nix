{ pkgs, lib, config, ... }: {

  options = {
    wireshark.enable = lib.mkEnableOption "enable wireshark";
  };

  config = lib.mkIf config.wireshark.enable {
    environment.systemPackages = [
      pkgs.wireshark
    ];
  };

}
