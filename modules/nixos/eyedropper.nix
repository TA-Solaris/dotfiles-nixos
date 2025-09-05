{ pkgs, lib, config, ... }: {

  options = {
    eyedropper.enable = lib.mkEnableOption "enable eyedropper";
  };

  config = lib.mkIf config.eyedropper.enable {
    environment.systemPackages = [
      pkgs.eyedropper
    ];
  };

}
