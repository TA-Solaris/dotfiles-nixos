{ pkgs, lib, config, ... }: {

  options = {
    nixos-gui-apps.enable = lib.mkEnableOption "enable nixos gui apps";
  };
  
  imports = [
    ./audacity.nix
    ./caprine.nix
    ./clamtk.nix
    ./curtail.nix
    ./dconf-editor.nix
    ./diffuse.nix
    ./discord.nix
    ./eyedropper.nix
    ./firefox.nix
    ./fragments.nix
    ./ghex.nix
    ./gimp.nix
    ./gparted.nix
    ./gummi.nix
    ./jellyfin.nix
    ./libreoffice.nix
    ./lorem.nix
#    ./metadata-cleaner.nix    # TODO - Fix
    ./obsidian.nix
    ./paper-clip.nix
    ./pdfarranger.nix
    ./prismlauncher.nix
    ./qtpass.nix
    ./retroarch.nix
    ./sigil.nix
    ./signal.nix
    ./spotify.nix
    ./steam.nix
    ./switcheroo.nix
    ./tor.nix
    ./video-downloader.nix
    ./vlc.nix
    ./whatsapp.nix
    ./zenmap.nix
  ];

  config = lib.mkIf config.nixos-gui-apps.enable {
    audacity.enable = lib.mkDefault true;
    caprine.enable = lib.mkDefault true;
    clamtk.enable = lib.mkDefault true;
    curtail.enable = lib.mkDefault true;
    dconf-editor.enable = lib.mkDefault true;
    diffuse.enable = lib.mkDefault true;
    discord.enable = lib.mkDefault true;
    eyedropper.enable = lib.mkDefault true;
    firefox.enable = lib.mkDefault true;
    fragments.enable = lib.mkDefault true;
    ghex.enable = lib.mkDefault true;
    gimp.enable = lib.mkDefault true;
    gparted.enable = lib.mkDefault true;
    gummi.enable = lib.mkDefault true;
    jellyfin.enable = lib.mkDefault true;
    libreoffice.enable = lib.mkDefault true;
    lorem.enable = lib.mkDefault true;
#    metadata-cleaner.enable = lib.mkDefault true;
    obsidian.enable = lib.mkDefault true;
    paper-clip.enable = lib.mkDefault true;
    pdfarranger.enable = lib.mkDefault true;
    prismlauncher.enable = lib.mkDefault true;
    qtpass.enable = lib.mkDefault true;
    retroarch.enable = lib.mkDefault true;
    sigil.enable = lib.mkDefault true;
    signal.enable = lib.mkDefault true;
    spotify.enable = lib.mkDefault true;
    steam.enable = lib.mkDefault true;
    switcheroo.enable = lib.mkDefault true;
    tor.enable = lib.mkDefault true;
    video-downloader.enable = lib.mkDefault true;
    vlc.enable = lib.mkDefault true;
    whatsapp.enable = lib.mkDefault true;
    zenmap.enable = lib.mkDefault true;
  };

}
