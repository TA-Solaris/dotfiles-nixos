{ pkgs, lib, config, ... }: {

  options = {
    atuin.enable = lib.mkEnableOption "enable atuin";
  };

  config = lib.mkIf config.atuin.enable {
    environment.systemPackages = [
      pkgs.atuin
    ];
  };

}
