{ pkgs, lib, config, inputs, ... }: {
  
  options = {
    vim-config.enable = lib.mkEnableOption "enables neovim config for nvf";
  };

  config = lib.mkIf config.vim-config.enable {
    vim = {
      telescope.enable = true;
      
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
  };

}
