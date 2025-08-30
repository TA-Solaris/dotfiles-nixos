{ pkgs, lib, ... } : {
  
  imports = [
    ./git.nix
    ./zsh/zsh.nix
    ./atuin.nix
    ./zoxide.nix
    ./shell-aliases.nix
    ./alacritty.nix
    ./tmux.nix
    ./neovim.nix
  ];
  
  git.enable = lib.mkDefault true;
  zsh.enable = lib.mkDefault true;
  atuin.enable = lib.mkDefault true;
  zoxide.enable = lib.mkDefault true;
  shell-aliases.enable = lib.mkDefault true;
  alacritty.enable = lib.mkDefault true;
  tmux.enable = lib.mkDefault true;
  neovim.enable = lib.mkDefault true;

}
