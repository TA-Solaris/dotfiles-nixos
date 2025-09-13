{ pkgs, lib, config, ... }: {

  options = {
    cursor.enable = lib.mkEnableOption "enable cursor";
  };

  config = lib.mkIf config.cursor.enable {
    environment.systemPackages = [
      pkgs.code-cursor
    ];
  };

}
