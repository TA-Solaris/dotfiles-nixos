{ pkgs, lib, config, ... }: {

  options = {
    azure-cli.enable = lib.mkEnableOption "enable azure-cli";
  };

  config = lib.mkIf config.azure-cli.enable {
    environment.systemPackages = [
      pkgs.azure-cli
    ];
  };

}
