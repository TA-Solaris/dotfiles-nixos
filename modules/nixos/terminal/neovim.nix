{ pkgs, lib, config, ... }: {

  options = {
    neovim.enable = lib.mkEnableOption "enable neovim";
  };

  config = lib.mkIf config.neovim.enable {
    environment.systemPackages = [
      pkgs.neovim
    ];
  };

}
