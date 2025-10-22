{ pkgs, lib, config, ... }: {

  options = {
    jetbrains.enable = lib.mkEnableOption "enable various jetbrains IDE's";
  };

  config = lib.mkIf config.jetbrains.enable {
    environment.systemPackages = with pkgs; [
      jetbrains.idea-ultimate
      jetbrains.idea-community-src
      jetbrains.rider
      jetbrains.webstorm
    ];
  };

}
