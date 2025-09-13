{ pkgs, lib, config, ... }: {

  options = {
    gummi.enable = lib.mkEnableOption "enable gummi";
  };

  config = lib.mkIf config.gummi.enable {
    environment.systemPackages = [
      pkgs.gummi
    ];
  };

}
