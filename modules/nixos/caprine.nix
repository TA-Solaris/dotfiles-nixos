{ pkgs, lib, config, ... }: {

  options = {
    caprine.enable = lib.mkEnableOption "enable caprine";
  };

  config = lib.mkIf config.caprine.enable {
    environment.systemPackages = [
      pkgs.caprine
    ];
  };

}
