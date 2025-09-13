{ pkgs, lib, config, ... }: {

  options = {
    cowsay.enable = lib.mkEnableOption "enable cowsay";
  };

  config = lib.mkIf config.cowsay.enable {
    environment.systemPackages = [
      pkgs.cowsay
    ];
  };

}
