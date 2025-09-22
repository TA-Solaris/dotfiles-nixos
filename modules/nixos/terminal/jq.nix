{ pkgs, lib, config, ... }: {

  options = {
    jq.enable = lib.mkEnableOption "enable jq";
  };

  config = lib.mkIf config.jq.enable {
    environment.systemPackages = [
      pkgs.jq
    ];
  };

}
