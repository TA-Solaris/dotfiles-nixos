{ pkgs, lib, config, ... }: {

  options = {
    awscli.enable = lib.mkEnableOption "enable awscli";
  };

  config = lib.mkIf config.awscli.enable {
    environment.systemPackages = [
      pkgs.awscli
    ];
  };

}
