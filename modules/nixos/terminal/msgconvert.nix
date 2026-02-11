{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    # Convert outlook email files to normal .eml
    msgconvert.enable = lib.mkEnableOption "enable msgconvert";
  };

  config = lib.mkIf config.msgconvert.enable {
    environment.systemPackages = [
      pkgs.perl5Packages.EmailOutlookMessage
    ];
  };
}
