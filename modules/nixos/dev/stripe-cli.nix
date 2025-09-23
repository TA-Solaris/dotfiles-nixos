{ pkgs, lib, config, ... }: {

  options = {
    stripe-cli.enable = lib.mkEnableOption "enable stripe-cli";
  };

  config = lib.mkIf config.stripe-cli.enable {
    environment.systemPackages = [
      pkgs.stripe-cli
    ];
  };

}
