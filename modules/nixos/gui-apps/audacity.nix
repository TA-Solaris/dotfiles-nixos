{
  pkgsStable,
  lib,
  config,
  ...
}: {
  options = {
    audacity.enable = lib.mkEnableOption "enable audacity";
  };

  config = lib.mkIf config.audacity.enable {
    environment.systemPackages = [
      pkgsStable.audacity
    ];
  };
}
