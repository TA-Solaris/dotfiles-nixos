{ pkgs, lib, config, ... }: {

  options = {
    sentry-cli.enable = lib.mkEnableOption "enable sentry-cli";
  };

  config = lib.mkIf config.sentry-cli.enable {
    environment.systemPackages = [
      pkgs.sentry-cli
    ];
  };

}
