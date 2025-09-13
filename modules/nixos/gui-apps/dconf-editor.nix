{ pkgs, lib, config, ... }: {

  options = {
    dconf-editor.enable = lib.mkEnableOption "enable dconf-editor";
  };

  config = lib.mkIf config.dconf-editor.enable {
    environment.systemPackages = [
      pkgs.dconf-editor
    ];
  };

}
