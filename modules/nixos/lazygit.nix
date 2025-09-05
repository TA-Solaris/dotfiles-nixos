{ pkgs, lib, config, ... }: {

  options = {
    lazygit.enable = lib.mkEnableOption "enable lazygit";
  };

  config = lib.mkIf config.lazygit.enable {
    environment.systemPackages = [
      pkgs.lazygit
    ];
  };

}
