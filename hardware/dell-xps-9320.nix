{
  config,
  lib,
  pkgs,
  ...
}: {
  # Fingerprint sensor
  services.fprintd.enable = true;
  
  # Fix screen tearing
  # https://nixos.org/manual/nixos/stable/index.html#sec-x11--graphics-cards-intel
  services.xserver.videoDrivers = [ "intel" ];
  services.xserver.deviceSection = ''
    Option "DRI" "2"
    Option "TearFree" "true"
  '';
  
  
}
