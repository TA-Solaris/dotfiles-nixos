{ pkgs, lib, config, ... }: {
  
  options = {
    alacritty.enable = lib.mkEnableOption "enables alacritty";
  };

  config = lib.mkIf config.alacritty.enable {
    programs.alacritty = {
      enable = true;

      settings = {
        env = {
          TERM = "xterm-256color";
        };

        window = {
          padding = { x = 10; y = 10; };
          decorations = "None";
          opacity = 0.7;
          blur = true;
          option_as_alt = "Both";
        };

        mouse = {
          hide_when_typing = true;
        };

        font = {
          normal = {
            family = "JetBrainsMono Nerd Font";
          };
          size = 18.0;
        };
      };
    };
  };

}
