{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    homebrew-gui-apps.enable = lib.mkEnableOption "enable homebrew gui-apps";
  };

  imports = [
    ./audacity.nix
    ./discord.nix
    ./libreoffice.nix
    ./shotcut.nix
    ./gimp.nix
    ./inkscape.nix
    ./firefox.nix
    ./messenger.nix
    ./obsidian.nix
    ./prismlauncher.nix
    ./retroarch.nix
    ./signal.nix
    ./steam.nix
    ./tor.nix
    ./whatsapp.nix
  ];

  config = lib.mkIf config.homebrew-gui-apps.enable {
    audacity-brew.enable = lib.mkDefault true;
    discord-brew.enable = lib.mkDefault true;
    libreoffice-brew.enable = lib.mkDefault true;
    shotcut-brew.enable = lib.mkDefault true;
    gimp-brew.enable = lib.mkDefault true;
    inkscape-brew.enable = lib.mkDefault true;
    firefox-brew.enable = lib.mkDefault true;
    messenger-brew.enable = lib.mkDefault true;
    obsidian-brew.enable = lib.mkDefault true;
    prismlauncher-brew.enable = lib.mkDefault true;
    retroarch-brew.enable = lib.mkDefault true;
    signal-brew.enable = lib.mkDefault true;
    steam-brew.enable = lib.mkDefault true;
    tor-brew.enable = lib.mkDefault true;
    whatsapp-brew.enable = lib.mkDefault true;
  };
}
