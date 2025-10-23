# TODO Make camera work

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
  
  # Enable hardware acceleration
  hardware.graphics.enable = true;
  
  # Camera
  # Tracking Issue: Intel MIPI/IPU6 webcam-support
  # https://github.com/NixOS/nixpkgs/issues/225743#issuecomment-1849613797
  hardware.ipu6 = {
    enable = false;
    platform = "ipu6ep";
  };
  environment.systemPackages = with pkgs; [
    libcamera
  ];
}

