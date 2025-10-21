{
  config,
  lib,
  pkgs,
  ...
}: {
  # Packages
  boot.kernelModules = [ "v4l2loopback" ];
  boot.extraModulePackages = [ pkgs.linuxPackages.v4l2loopback ];
  environment.systemPackages = with pkgs; [
    v4l-utils # https://discourse.nixos.org/t/v4l2loopback-cannot-find-module/26301/5
    alsa-utils
    libcamera
    ivsc-firmware
  ];

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
  # https://wiki.archlinux.org/title/Dell_XPS_13_Plus_(9320)#Audio
  # May need to run
  # alsactl init
  # alsactl store
  
}
