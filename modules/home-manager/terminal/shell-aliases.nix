{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    shell-aliases.enable = lib.mkEnableOption "enables shell aliases";
  };

  config = lib.mkIf config.shell-aliases.enable {
    home.shellAliases = {
      dtr = "dotnet run";
      dtw = "dotnet watch";
      yrs = "yarn start";
      yri = "yarn install";
      lzg = "lazygit";
      lzd = "lazydocker";
      drm = ''
        docker rm -f $(docker ps -aq) 2>/dev/null || true
        docker volume rm $(docker volume ls -q) 2>/dev/null || true
        echo "Docker Containers and Volumes Deleted!"
      '';
      c = "clear";
      h = "cd ~";
      hc = "cd ~; clear;";
      "find-sync-conflict" = ''find ~/Documents -type f -name "*sync-conflict*" '';
      "nix-clean" = ''
        sudo nix-collect-garbage -d
        nix-collect-garbage -d
        nix store gc
        sudo nix store optimise
        sudo nix profile wipe-history
      '';
    };

    programs.zsh.initContent = lib.mkAfter ''
      deep-backup() {
        local current_dir home_dir
        current_dir="$(pwd -P)"
        home_dir="$(cd "$HOME" && pwd -P)"

        if [ "$current_dir" = "$home_dir" ]; then
          echo "deep-backup: refusing to run from \$HOME" >&2
          return 1
        fi

        command rsync -avh --delete --no-perms --no-owner --no-group --exclude="*/.stfolder/" "$HOME/Documents/" "$@"
      }
    '';
  };
}
