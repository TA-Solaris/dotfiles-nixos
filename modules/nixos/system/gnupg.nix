{ pkgs, lib, config, ... }: {

  options = {
    gnupg.enable = lib.mkEnableOption "enable gnupg";
  };

  config = lib.mkIf config.gnupg.enable {
    environment.systemPackages = [
      pkgs.gnupg
    ];
  };

}
