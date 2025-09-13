{ pkgs, lib, ... }: {
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
}
