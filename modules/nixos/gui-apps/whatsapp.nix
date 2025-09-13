{ pkgs, lib, config, ... }: {

  options = {
    whatsapp.enable = lib.mkEnableOption "enable whatsapp";
  };

  config = lib.mkIf config.whatsapp.enable {
    environment.systemPackages = [
      pkgs.whatsapp-electron
    ];
  };

}
