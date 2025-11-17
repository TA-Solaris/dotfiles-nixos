{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    claude.enable = lib.mkEnableOption "enable claude code";
  };

  config = lib.mkIf config.claude.enable {
    environment.systemPackages = [
      pkgs.claude-code
    ];
  };
}
