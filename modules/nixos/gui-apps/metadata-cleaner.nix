{ pkgsStable, lib, config, ... }: {

  options = {
    metadata-cleaner.enable = lib.mkEnableOption "enable metadata-cleaner";
  };

  config = lib.mkIf config.metadata-cleaner.enable {
    environment.systemPackages = [
      pkgsStable.metadata-cleaner
    ];
  };

}
