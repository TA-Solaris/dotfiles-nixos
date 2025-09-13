{ pkgs, lib, config, ... }: {

  options = {
    zsh.enable = lib.mkEnableOption "enable zsh";
  };

  config = lib.mkIf config.zsh.enable {
    environment.systemPackages = [
      pkgs.zsh
    ];
  };

}
