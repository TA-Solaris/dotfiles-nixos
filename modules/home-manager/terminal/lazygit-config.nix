{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    lazygit-config.enable = lib.mkEnableOption "enables lazygit config";
  };

  config = lib.mkIf config.lazygit-config.enable {
    programs.lazygit = {
      enable = true;
      settings = {
        git = {
          pagers = [
            {
              colorArg = "always";
              pager = ''delta --paging=never --line-numbers --hyperlinks --hyperlinks-file-link-format="lazygit-edit://{path}:{line}"'';
            }
          ];
          showBottomLine = false;
          showRandomTip = false;
        };
      };
    };
  };
}
