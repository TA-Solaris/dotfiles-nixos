{ pkgs, lib, config, ... }: {

  options = {
    tmux.enable = lib.mkEnableOption "enable tmux";
  };

  config = lib.mkIf config.tmux.enable {
    environment.systemPackages = [
      pkgs.tmux
    ];
  };

}
