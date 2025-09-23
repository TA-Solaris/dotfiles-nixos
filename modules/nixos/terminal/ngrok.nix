{ pkgs, lib, config, ... }: {

  options = {
    ngrok.enable = lib.mkEnableOption "enable ngrok";
  };

  config = lib.mkIf config.ngrok.enable {
    environment.systemPackages = [
      pkgs.ngrok
    ];
  };

}
