{ pkgs, lib, config, ... }: {

  options = {
    home-manager-terminal.enable = lib.mkEnableOption "enable home-manager terminal";
  };
  
  imports = [
    ./alacritty.nix
    ./atuin.nix
    ./shell-aliases.nix
    ./tmux.nix
    ./zoxide.nix
    ./neovim/neovim.nix
    ./neovim/nvf-config.nix
    ./zsh/zsh.nix
  ];

  config = lib.mkIf config.home-manager-terminal.enable {
    alacritty.enable = lib.mkDefault true;
    atuin.enable = lib.mkDefault true;
    shell-aliases.enable = lib.mkDefault true;
    tmux.enable = lib.mkDefault true;
    zoxide.enable = lib.mkDefault true;
    neovim.enable = lib.mkDefault true;
    nvf-config.enable = lib.mkDefault true;
    zsh.enable = lib.mkDefault true;
  };

}
