{ pkgs, lib, config, ... }: {

  options = {
    nixos-terminal.enable = lib.mkEnableOption "enable nixos terminal";
  };
  
  imports = [
    ./alacritty.nix
    ./atuin.nix
    ./btop.nix
    ./cmatrix.nix
    ./cowsay.nix
    ./dust.nix
    ./fortune.nix
    ./fzf.nix
    ./gallery-dl.nix
    ./jq.nix
    ./lazydocker.nix
    ./lazygit.nix
    ./lolcat.nix
    ./neovim.nix
    ./nmap.nix
    ./ranger.nix
    ./sl.nix
    ./tmux.nix
    ./net-tools.nix
    ./wget.nix
    ./yt-dlp.nix
    ./ffmpeg.nix
    ./fastfetch.nix
    ./zoxide.nix
    ./zsh.nix
  ];

  config = lib.mkIf config.nixos-terminal.enable {
    alacritty.enable = lib.mkDefault true;
    atuin.enable = lib.mkDefault true;
    btop.enable = lib.mkDefault true;
    cmatrix.enable = lib.mkDefault true;
    cowsay.enable = lib.mkDefault true;
    dust.enable = lib.mkDefault true;
    fortune.enable = lib.mkDefault true;
    fzf.enable = lib.mkDefault true;
    gallery-dl.enable = lib.mkDefault true;
    jq.enable = lib.mkDefault true;
    lazydocker.enable = lib.mkDefault true;
    lazygit.enable = lib.mkDefault true;
    lolcat.enable = lib.mkDefault true;
    neovim.enable = lib.mkDefault true;
    nmap.enable = lib.mkDefault true;
    ranger.enable = lib.mkDefault true;
    sl.enable = lib.mkDefault true;
    tmux.enable = lib.mkDefault true;
    net-tools.enable = lib.mkDefault true;
    wget.enable = lib.mkDefault true;
    yt-dlp.enable = lib.mkDefault true;
    ffmpeg.enable = lib.mkDefault true;
    fastfetch.enable = lib.mkDefault true;
    zoxide.enable = lib.mkDefault true;
    zsh.enable = lib.mkDefault true;
  };

}
