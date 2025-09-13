{ pkgs, lib, config, ... }: {

  options = {
    git.enable = lib.mkEnableOption "enable git";
  };

  config = lib.mkIf config.git.enable {
    environment.systemPackages = [
      pkgs.git
    ];
  };

}
