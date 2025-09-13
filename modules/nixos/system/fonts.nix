{ pkgs, lib, config, ... }: {
  
  options = {
    fonts.enable = lib.mkEnableOption "enables fonts";
  };

  config = lib.mkIf config.fonts.enable {
    environment.systemPackages = [
      pkgs.nerd-fonts.jetbrains-mono
    ];
  };

}
