{ pkgs, lib, config, ... }: {

  options = {
    dart.enable = lib.mkEnableOption "enable dart";
  };

  config = lib.mkIf config.dart.enable {
    environment.systemPackages = [
      pkgs.dart
    ];
  };

}
