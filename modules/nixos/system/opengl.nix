{ pkgs, lib, config, ... }: {

  options = {
    opengl.enable = lib.mkEnableOption "enable opengl";
  };

  config = lib.mkIf config.opengl.enable {
    hardware = {
      graphics = {
        enable = true;
        enable32Bit = true;
      };
    };
  };

}
