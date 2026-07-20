{ pkgs, lib, config, ... }: {

  options = {
    tree.enable = lib.mkEnableOption "enable tree";
  };

  config = lib.mkIf config.tree.enable {
    environment.systemPackages = [
      pkgs.tree
    ];
  };

}
