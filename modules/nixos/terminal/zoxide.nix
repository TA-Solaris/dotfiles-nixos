{ pkgs, lib, config, ... }: {

  options = {
    zoxide.enable = lib.mkEnableOption "enable zoxide";
  };

  config = lib.mkIf config.zoxide.enable {
    environment.systemPackages = [
      pkgs.zoxide
    ];
  };

}
