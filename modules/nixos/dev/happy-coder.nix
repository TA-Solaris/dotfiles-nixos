{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    happy-coder.enable = lib.mkEnableOption "enable happy coder";
  };

  config = lib.mkIf config.happy-coder.enable {
    environment.systemPackages = [
      pkgs.happy-coder
    ];
  };
}
