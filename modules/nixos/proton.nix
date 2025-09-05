{ pkgs, lib, config, ... }: {

  options = {
    proton.enable = lib.mkEnableOption "enable proton";
  };

  config = lib.mkIf config.proton.enable {
    environment.systemPackages = [
      pkgs.protonplus
    ];
  };

}
