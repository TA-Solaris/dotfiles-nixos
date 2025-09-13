{ pkgs, lib, config, ... }: {

  options = {
    lazydocker.enable = lib.mkEnableOption "enable lazydocker";
  };

  config = lib.mkIf config.lazydocker.enable {
    environment.systemPackages = [
      pkgs.lazydocker
    ];
  };

}
