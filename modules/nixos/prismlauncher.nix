{ pkgs, lib, config, ... }: {

  options = {
    prismlauncher.enable = lib.mkEnableOption "enable prism launcher";
  };

  config = lib.mkIf config.prismlauncher.enable {
    environment.systemPackages = [
      pkgs.prismlauncher
    ];
  };

}
