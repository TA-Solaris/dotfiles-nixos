{ pkgs, lib, config, ... }: {

  options = {
    python.enable = lib.mkEnableOption "enable python";
  };

  config = lib.mkIf config.python.enable {
    environment.systemPackages = [
      pkgs.python314
    ];
  };

}
