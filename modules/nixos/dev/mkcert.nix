{ pkgs, lib, config, ... }: {

  options = {
    mkcert.enable = lib.mkEnableOption "enable mkcert";
  };

  config = lib.mkIf config.mkcert.enable {
    environment.systemPackages = [
      pkgs.mkcert
    ];
  };

}
