{ pkgs, lib, config, ... }: {
  
  options = {
    fonts.enable = lib.mkEnableOption "enables fonts";
  };

  config = lib.mkIf config.fonts.enable {
    home.packages = with pkgs; [
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
  };

}
