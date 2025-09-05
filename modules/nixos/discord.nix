{ pkgs, lib, config, ... }: {

  options = {
    discord.enable = lib.mkEnableOption "enable discord";
  };

  config = lib.mkIf config.discord.enable {
    environment.systemPackages = [
      pkgs.discord
    ];
  };

}
