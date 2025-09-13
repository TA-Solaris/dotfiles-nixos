{ pkgs, lib, config, ... }: {

  options = {
    retroarch.enable = lib.mkEnableOption "enable retroarch";
  };

  config = lib.mkIf config.retroarch.enable {
    environment.systemPackages = [
      pkgs.retroarch
    ];
  };

}
