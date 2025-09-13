{ pkgs, lib, config, ... }: {

  options = {
    lolcat.enable = lib.mkEnableOption "enable lolcat";
  };

  config = lib.mkIf config.lolcat.enable {
    environment.systemPackages = [
      pkgs.lolcat
    ];
  };

}
