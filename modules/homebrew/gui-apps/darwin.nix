{ pkgs, lib, config, ... }: {

  options = {
    homebrew-gui-apps.enable = lib.mkEnableOption "enable homebrew gui-apps";
  };
  
  imports = [
    ./libreoffice.nix
    ./shotcut.nix
    ./gimp.nix
  ];

  config = lib.mkIf config.homebrew-gui-apps.enable {
    libreoffice-brew.enable = lib.mkDefault true;
    shotcut-brew.enable = lib.mkDefault true;
    gimp-brew.enable = lib.mkDefault true;
  };

}
