{ pkgs, lib, config, ... }: {

  options = {
    php.enable = lib.mkEnableOption "enable php";
  };

  config = lib.mkIf config.php.enable {
    environment.systemPackages = [
      pkgs.php
    ];
  };

}
