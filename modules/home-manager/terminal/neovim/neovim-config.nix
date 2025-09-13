{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    neovim-config.enable = lib.mkEnableOption "enables neovim config";
  };

  config = lib.mkIf config.neovim-config.enable {
    home.packages = [
      inputs.nvf.packages.${pkgs.system}.default
    ];

    home.sessionVariables.EDITOR = "nvim";
  };

}
