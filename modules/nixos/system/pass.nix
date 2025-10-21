{ pkgs, lib, config, ... }: {

  options = {
    pass.enable = lib.mkEnableOption "enable pass";
  };

  config = lib.mkIf config.pass.enable {
    environment.systemPackages = [
      pkgs.pass
    ];
  };

}
