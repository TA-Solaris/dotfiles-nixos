{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    setzer.enable = lib.mkEnableOption "enable setzer";
  };

  config = lib.mkIf config.setzer.enable {
    environment.systemPackages = [
      pkgs.texlive.combined.scheme-full
      pkgs.setzer
    ];
  };
}
