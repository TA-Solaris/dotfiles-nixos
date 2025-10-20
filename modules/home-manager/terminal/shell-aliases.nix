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
      nix-clean = "sudo nix-collect-garbage -d && nix-collect-garbage -d && home-manager expire-generations -d && nix store gc && sudo nix store optimize && sudo nix profile wipe-history && home-manager remove-generations old";
    };
  };
}
