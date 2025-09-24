{ pkgs, lib, config, ... }: {

  options = {
    dotenv-cli.enable = lib.mkEnableOption "enable dotenv-cli";
  };

  config = lib.mkIf config.dotenv-cli.enable {
    environment.systemPackages = [
      pkgs.dotenv-cli
    ];
  };

}
