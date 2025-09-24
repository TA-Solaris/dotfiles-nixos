{ pkgs, lib, config, ... }: {

  options = {
    dbeaver-community-brew.enable = lib.mkEnableOption "enable dbeaver-community brew";
  };

  config = lib.mkIf config.dbeaver-community-brew.enable {
    homebrew.casks = [
      "dbeaver-community"
    ];
  };

}
