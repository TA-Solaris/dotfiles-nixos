{ pkgs, lib, ... } : {
  
  imports = [
    ./git.nix
    ./zsh/zsh.nix
    ./atuin.nix
    ./zoxide.nix
    ./shell-aliases.nix
  ];
  
  git.enable = lib.mkDefault true;
  zsh.enable = lib.mkDefault true;
  atuin.enable = lib.mkDefault true;
  zoxide.enable = lib.mkDefault true;
  shell-aliases.enable = lib.mkDefault true;

}
