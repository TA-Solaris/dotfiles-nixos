{ pkgs, lib, config, ... }: {

  options = {
    meld.enable = lib.mkEnableOption "enable meld";
  };

  config = lib.mkIf config.meld.enable {
    environment.systemPackages = [
      pkgs.meld
    ];
  };

}
