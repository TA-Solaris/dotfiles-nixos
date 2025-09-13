{ pkgs, lib, config, ... }: {

  options = {
    nixos-terminal.enable = lib.mkEnableOption "enable nixos terminal";
  };
  
  imports = [
    ./btop.nix
    ./cmatrix.nix
    ./cowsay.nix
    ./dust.nix
    ./fortune.nix
    ./fzf.nix
    ./gallery-dl.nix
    ./lazydocker.nix
    ./lazygit.nix
    ./lolcat.nix
    ./nmap.nix
    ./sl.nix
    ./traceroute.nix
    ./net-tools.nix
    ./wget.nix
    ./yt-dlp.nix
    ./ffmpeg.nix
    ./fastfetch.nix
  ];

  config = lib.mkIf config.nixos-terminal.enable {
    btop.enable = lib.mkDefault true;
    cmatrix.enable = lib.mkDefault true;
    cowsay.enable = lib.mkDefault true;
    dust.enable = lib.mkDefault true;
    fortune.enable = lib.mkDefault true;
    fzf.enable = lib.mkDefault true;
    gallery-dl.enable = lib.mkDefault true;
    lazydocker.enable = lib.mkDefault true;
    lazygit.enable = lib.mkDefault true;
    lolcat.enable = lib.mkDefault true;
    nmap.enable = lib.mkDefault true;
    sl.enable = lib.mkDefault true;
    traceroute.enable = lib.mkDefault true;
    net-tools.enable = lib.mkDefault true;
    wget.enable = lib.mkDefault true;
    yt-dlp.enable = lib.mkDefault true;
    ffmpeg.enable = lib.mkDefault true;
    fastfetch.enable = lib.mkDefault true;
  };

}
