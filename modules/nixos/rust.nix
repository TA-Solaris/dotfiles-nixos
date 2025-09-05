{ pkgs, lib, config, ... }: {

  options = {
    rust.enable = lib.mkEnableOption "enable rust";
  };

  config = lib.mkIf config.rust.enable {
    environment.systemPackages = [
      pkgs.rustc
      pkgs.cargo
    ];
  };

}
