{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    zsh-config.enable = lib.mkEnableOption "enables zsh config";
  };

  config = lib.mkIf config.zsh-config.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;

      zplug = {
        enable = true;
        plugins = [
          {
            name = "romkatv/powerlevel10k";
            tags = ["as:theme" "depth:1"];
          }
          {name = "zsh-users/zsh-autosuggestions";}
          {name = "zsh-users/zsh-syntax-highlighting";}
        ];
      };

      initContent = ''
        # Load Powerlevel10k config if present
        [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

        if command -v tmux >/dev/null; then
           if [ -z "$TMUX" ]; then
             case "$TERM_PROGRAM" in
               vscode|cursor|jetbrains*)
                 # Skip auto-tmux inside IDE terminals
                 ;;
               *)
                 if [ "$PWD" != "$HOME" ]; then
                   tmux new -c "$PWD"
                 else
                   tmux attach || tmux new
                 fi
                 ;;
             esac
           fi
         fi
      '';
    };

    home.file.".p10k.zsh".source = ./.p10k.zsh;
  };
}
