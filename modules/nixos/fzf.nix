{ pkgs, lib, config, ... }: {

  options = {
    fzf.enable = lib.mkEnableOption "enable fzf";
  };

  config = lib.mkIf config.fzf.enable {
    environment.systemPackages = [
      pkgs.fzf
    ];
  };

}
