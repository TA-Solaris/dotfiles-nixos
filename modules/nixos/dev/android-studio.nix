{ pkgs, lib, config, ... }: {

  options = {
    android-studio.enable = lib.mkEnableOption "enable android studio";
  };

  config = lib.mkIf config.android-studio.enable {
    environment.systemPackages = [
      pkgs.android-studio
    ];
  };

}
