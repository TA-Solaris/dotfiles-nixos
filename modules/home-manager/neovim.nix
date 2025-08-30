{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    neovim.enable = lib.mkEnableOption "enables neovim";
  };

  config = lib.mkIf config.neovim.enable {
    home.packages = [
      inputs.nvf.packages.${pkgs.system}.default
    ];

    home.sessionVariables.EDITOR = "nvim";
  };

}
