{ pkgs, lib, config, ... }: {

  options = {
    nixos-system.enable = lib.mkEnableOption "enable nixos system";
  };
  
  imports = [
    ./fonts.nix
    ./gamemode.nix
    ./git.nix
    ./gnome.nix
    ./network-manager.nix
    ./opengl.nix
    ./pipewire.nix
    ./proton.nix
    ./qemu.nix
    ./syncthing.nix
    ./vulkan.nix
    ./wireguard.nix
    ./gnupg.nix
  ];

  config = lib.mkIf config.nixos-system.enable {
    fonts.enable = lib.mkDefault true;
    gamemode.enable = lib.mkDefault true;
    git.enable = lib.mkDefault true;
    gnome.enable = lib.mkDefault true;
    network-manager.enable = lib.mkDefault true;
    opengl.enable = lib.mkDefault true;
    pipewire.enable = lib.mkDefault true;
    proton.enable = lib.mkDefault true;
    qemu.enable = lib.mkDefault true;
    syncthing.enable = lib.mkDefault true;
    vulkan.enable = lib.mkDefault true;
    wireguard.enable = lib.mkDefault true;
    gnupg.enable = lib.mkDefault true;
  };

}
