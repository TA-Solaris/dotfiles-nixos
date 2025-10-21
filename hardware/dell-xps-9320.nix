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
  
  # Microphone
  security.rtkit.enable = true;
  environment.systemPackages = with pkgs; [
    alsa-utils
  ];
  # https://wiki.archlinux.org/title/Dell_XPS_13_Plus_(9320)#Audio
  # May need to run
  # alsactl init
  # alsactl store
  
}
