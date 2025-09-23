{ pkgs, lib, config, ... }: {

  options = {
    twilio-cli.enable = lib.mkEnableOption "enable twilio-cli";
  };

  config = lib.mkIf config.twilio-cli.enable {
    environment.systemPackages = [
      pkgs.twilio-cli
    ];
  };

}
