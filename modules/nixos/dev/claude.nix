{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: let
  pkgs-stable = import inputs.nixpkgs-stable {
    # TODO - Do this is a more generic, reusable way
    system = pkgs.stdenv.hostPlatform.system;
    config = {
      allowUnfree = pkgs.config.allowUnfree or false;
    };
  };
in {
  options = {
    claude.enable = lib.mkEnableOption "enable claude code";
  };

  config = lib.mkIf config.claude.enable {
    environment.systemPackages = [
      pkgs-stable.claude-code
    ];
  };
}
