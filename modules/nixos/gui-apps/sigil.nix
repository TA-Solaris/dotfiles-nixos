{ pkgs, lib, config, ... }: {

  options = {
    sigil.enable = lib.mkEnableOption "enable sigil";
  };

  config = lib.mkIf config.sigil.enable {
    environment.systemPackages = [
      pkgs.sigil
    ];
  };

}
