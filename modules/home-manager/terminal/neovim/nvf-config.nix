{ pkgs, lib, config, ... }: {
  
  options = {
    nvf-config.enable = lib.mkEnableOption "enables nvf config";
  };

  config = lib.mkIf config.nvf-config.enable {
    vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "dark";
      };
      
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
