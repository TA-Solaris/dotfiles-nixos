{ pkgs, lib, config, ... }: {
  
  options = {
    zsh.enable = lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;

      zplug = {
      enable = true;
      plugins = [
        {
          name = "zsh-users/zsh-autosuggestions";
        }
        {
          name = "zsh-users/zsh-syntax-highlighting";
        }
        {
          name = "romkatv/powerlevel10k";
          tags = [ "as:theme" "depth:1" ];
        }
        {
          name = "plugins/git";
          tags = [ "from:oh-my-zsh" "depth:1" ];
        }
        {
          name = "plugins/zoxide";
          tags = [ "from:oh-my-zsh" "depth:1" ];
        }
      ];
      
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
	
	# Load Powerlevel10k config if present
        [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
      '';
    };
    
    home.file.".p10k.zsh".source = ./p10k.zsh;
  };

}
