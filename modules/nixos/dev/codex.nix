{
  pkgsStable,
  lib,
  config,
  ...
}: {
  options = {
    codex.enable = lib.mkEnableOption "enable codex";
  };

  config = lib.mkIf config.codex.enable {
    environment.systemPackages = [
      pkgsStable.codex
    ];
  };
}
