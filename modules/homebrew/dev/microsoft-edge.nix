{ pkgs, lib, config, ... }: {

  options = {
    microsoft-edge-brew.enable = lib.mkEnableOption "enable microsoft-edge brew";
  };

  config = lib.mkIf config.microsoft-edge-brew.enable {
    homebrew.casks = [
      "microsoft-edge"
    ];
  };

}
