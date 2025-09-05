{ pkgs, lib, config, ... }: {

  options = {
    paper-clip.enable = lib.mkEnableOption "enable paper-clip";
  };

  config = lib.mkIf config.paper-clip.enable {
    environment.systemPackages = [
      pkgs.paper-clip
    ];
  };

}
