{ pkgs, lib, config, ... }: {

  options = {
    alacritty.enable = lib.mkEnableOption "enable alacritty";
  };

  config = lib.mkIf config.alacritty.enable {
    environment.systemPackages = [
      pkgs.alacritty
    ];
  };

}
