{
  config,
  lib,
  pkgs,
  ...
}: {
  # Fingerprint sensor
  services.fprintd.enable = true;
}
