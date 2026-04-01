{ pkgs, lib, config, ... }: {

  options = {
    ghostty-config.enable = lib.mkEnableOption "enable ghostty config";
  };

  config = lib.mkIf config.ghostty-config.enable {
    programs.ghostty.enable = true;

    xdg.configFile."ghostty/cursor_sweep.glsl".source = ./cursor_sweep.glsl;

    xdg.configFile."ghostty/config".text = ''
      font-family = JetBrainsMono Nerd Font
      font-size = 18
      window-padding-x = 10
      window-padding-y = 10
      background-opacity = 0.7
      background-blur = true
      cursor-style = block
      cursor-style-blink = true
      scrollback-limit = 0
      gtk-tabs-location = hidden
      gtk-titlebar = false
      macos-titlebar-style = hidden
      custom-shader = ${config.xdg.configHome}/ghostty/cursor_sweep.glsl
      custom-shader-animation = true
      confirm-close-surface = false
    '';
  };

}
