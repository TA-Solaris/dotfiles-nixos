{ pkgsStable, lib, config, ... }: {

  options = {
    azure-cli.enable = lib.mkEnableOption "enable azure-cli";
  };

  config = lib.mkIf config.azure-cli.enable {
    environment.systemPackages = [
      # shortcut: use stable until unstable Fabric supports Invoke 3.
      pkgsStable.azure-cli
    ];
  };

}
