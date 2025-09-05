{ pkgs, lib, config, ... }: {

  options = {
    cmake.enable = lib.mkEnableOption "enable cmake";
  };

  config = lib.mkIf config.cmake.enable {
    environment.systemPackages = [
      pkgs.cmake
    ];
  };

}
