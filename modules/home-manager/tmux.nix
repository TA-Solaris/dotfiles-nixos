{ pkgs, lib, config, ... }: {
  
  options = {
    tmux.enable = lib.mkEnableOption "enables tmux";
  };

  config = lib.mkIf config.tmux.enable {
    programs.tmux = {
      enable = true;
      terminal = "tmux-256color";
      extraConfig = ''
        # reload config file (change file location to your the tmux.conf you want to use)
	bind r source-file ~/.tmux.conf

	# Enable mouse control (clickable windows, panes, resizable panes)
	set -g mouse on

	# Set Prefix to Escape
	#set-option -g prefix Escape
	#unbind-key C-b
	#bind-key Escape send-prefix

	# Split panes using h and v
	bind h split-window -h
	bind v split-window -v
	unbind '"'
	unbind %

	set -g base-index 1 # start windows numbering at 1

	# DESIGN TWEAKS

	# don't do anything when a 'bell' rings
	set -g visual-activity off
	set -g visual-bell off
	set -g visual-silence off
	setw -g monitor-activity off
	set -g bell-action none
      '';
    };
  };

}
