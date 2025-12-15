{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    home-manager-terminal.enable = lib.mkEnableOption "enable home-manager terminal";
  };

  imports = [
    ./alacritty-config.nix
    ./atuin-config.nix
    ./delta-config.nix
    ./lazygit-config.nix
    ./shell-aliases.nix
    ./tmux-config.nix
    ./zoxide-config.nix
    ./neovim-config.nix
    ./zsh/zsh-config.nix
  ];

  config = lib.mkIf config.home-manager-terminal.enable {
    alacritty-config.enable = lib.mkDefault true;
    atuin-config.enable = lib.mkDefault true;
    delta-config.enable = lib.mkDefault true;
    lazygit-config.enable = lib.mkDefault true;
    shell-aliases.enable = lib.mkDefault true;
    tmux-config.enable = lib.mkDefault true;
    zoxide-config.enable = lib.mkDefault true;
    neovim-config.enable = lib.mkDefault true;
    zsh-config.enable = lib.mkDefault true;
  };
}
