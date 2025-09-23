{ pkgs, lib, config, ... }: {

  options = {
    fd.enable = lib.mkEnableOption "enable fd";
  };

  config = lib.mkIf config.fd.enable {
    environment.systemPackages = [
      pkgs.fd
    ];
  };

}
