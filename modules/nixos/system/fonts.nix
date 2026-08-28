{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    fonts.enable = lib.mkEnableOption "enables fonts";
  };

  config = lib.mkIf config.fonts.enable {
    environment.systemPackages = with pkgs; [
      nerd-fonts.jetbrains-mono
      font-manager
    ];

    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      corefonts
      helvetica-neue-lt-std
      liberation_ttf
      source-sans
      vista-fonts
      google-fonts
    ];
  };
}
