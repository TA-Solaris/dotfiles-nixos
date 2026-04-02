{
  lib,
  config,
  pkgsStable,
  ...
}: {
  options = {
    claude.enable = lib.mkEnableOption "enable claude code";
  };

  config = lib.mkIf config.claude.enable {
    environment.systemPackages = [
      pkgsStable.claude-code
    ];
  };
}
