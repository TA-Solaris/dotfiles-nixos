{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    neovim.enable = lib.mkEnableOption "enables neovim";
  };

  config = lib.mkIf config.neovim.enable {
    home.packages = [
      inputs.nvf.packages.${pkgs.system}.default
    ];
    
    programs.nvf = {
      enable = true;
      
      settings = {
        colorscheme = "tokyonight";
      };
    
      plugins = {
        telescope.enable = true;
        treesitter.enable = true;
        lsp.enable = true;
        tokyonight.enable = true;
      };
      
      languages = {
        enableLSP = true;
        enableTreesitter = true;
      
        rust.enable = true;
        nix.enable = true;
        sql.enable = true;
        clang.enable = true;
        ts.enable = true;
        python.enable = true;
        markdown.enable = true;
        html.enable = true;
        dart.enable = true;
        go.enable = true;
        lua.enable = true;
        php.enable = true;
      };
    };

    home.sessionVariables.EDITOR = "nvim";
  };

}
