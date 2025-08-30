{ pkgs, lib, config, ... }: {
  
  options = {
    zsh.enable = lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      ohMyZsh = {
        enable = true;
        theme = "powerlevel10k/powerlevel10k";
        plugins = [ "git" "zsh-autosuggestions" "zsh-syntax-highlighting" ];
      };
      
      initExtra = ''
	if command -v tmux >/dev/null; then
	  if [ -z "$TMUX" ]; then
	    if [ "$PWD" != "$HOME" ]; then
              tmux new -c "$PWD"
	    else
              tmux attach || tmux new
	    fi
	  fi
	fi
      '';
    };
    
    home.file.".p10k.zsh".source = ./p10k.zsh;
  };

}
