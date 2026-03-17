{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    age.enable = lib.mkEnableOption "enable age";
  };

  config = lib.mkIf config.age.enable {
    environment.systemPackages = [
      pkgs.age
    ];
  };
}
