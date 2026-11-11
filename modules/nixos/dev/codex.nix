{
  pkgs,
  lib,
  config,
  ...
}: let
  # Pin codex to the nixpkgs rev used before the 2026-11-11 flake update.
  # Current unstable's codex 0.167.0 drv is broken (missing sqlite/onig/zstd/aws-lc).
  # Drop this pin once nixpkgs codex builds cleanly again.
  nixpkgsCodex = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/02c087f3fe673c9e317f206a627cb6b910336dbe.tar.gz";
    sha256 = "1l60ar0j7j7jrrg4r7j4kscrih0qn2n0lslffzflhv86lyq650r2";
  }) {
    system = pkgs.stdenv.hostPlatform.system;
    config.allowUnfree = true;
  };
in {
  options = {
    codex.enable = lib.mkEnableOption "enable codex";
  };

  config = lib.mkIf config.codex.enable {
    environment.systemPackages = [
      nixpkgsCodex.codex
    ];
  };
}
