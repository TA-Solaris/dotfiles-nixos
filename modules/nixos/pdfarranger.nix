{ pkgs, lib, config, ... }: {

  options = {
    pdfarranger.enable = lib.mkEnableOption "enable pdfarranger";
  };

  config = lib.mkIf config.pdfarranger.enable {
    environment.systemPackages = [
      pkgs.pdfarranger
    ];
  };

}
