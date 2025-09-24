{ pkgs, lib, config, ... }: {

  options = {
    homebrew-system.enable = lib.mkEnableOption "enable homebrew system";
  };
  
  imports = [
    ./caffeine.nix
    ./doll.nix
    ./easy-move-resize.nix
    ./karabiner-elements.nix
    ./maccy.nix
    ./rectangle.nix
  ];

  config = lib.mkIf config.homebrew-system.enable {
    caffeine-brew.enable = lib.mkDefault true;
    doll-brew.enable = lib.mkDefault true;
    easy-move-resize-brew.enable = lib.mkDefault true;
    karabiner-elements-brew.enable = lib.mkDefault true;
    maccy-brew.enable = lib.mkDefault true;
    rectangle-brew.enable = lib.mkDefault true;
  };

}
