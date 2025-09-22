{ pkgs, lib, config, ... }: {
  
  options = {
    shell-aliases.enable = lib.mkEnableOption "enables shell aliases";
  };

  config = lib.mkIf config.shell-aliases.enable {
    home.shellAliases = {
      drm = ''
        docker rm -f $(docker ps -aq) 2>/dev/null || true
        docker volume rm $(docker volume ls -q) 2>/dev/null || true
        echo "Docker Containers and Volumes Deleted!"
      '';
      c = "clear";
      h = "cd ~";
      hc = "cd ~; clear;";
    };
  };

}
