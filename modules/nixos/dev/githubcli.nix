{ pkgs, lib, config, ... }: {
  options.githubcli.enable = lib.mkEnableOption "enable GitHub CLI";

  config = lib.mkIf config.githubcli.enable {
    environment.systemPackages = [ pkgs.gh ];
  };
}
