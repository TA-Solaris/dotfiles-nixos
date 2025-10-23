# TODO Make camera and mic work

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
  
  # Camera
  # https://github.com/CyberT3C/nixos-config/blob/main/dell-xps-9315-cam.nix
  hardware.ipu6 = {
    enable = false;
    platform = "ipu6ep";
  };
  services.v4l2-relayd.instances.ipu6.enable = lib.mkForce false;
  hardware.firmware = with pkgs; [
    ivsc-firmware
  ];
  hardware.enableRedistributableFirmware = true;
  
  boot.kernelModules = [ "v4l2loopback" ];
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
  environment.systemPackages = with pkgs; (with gst_all_1; [
    gstreamer
    gst-plugins-base
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-ugly
    gst-libav
    gst-vaapi
    ])   
    ++ [
    v4l-utils # https://discourse.nixos.org/t/v4l2loopback-cannot-find-module/26301/5
    libcamera
  ];

  # Enable hardware acceleration
  hardware.graphics.enable = true;

  # camera browser support
  # XDG Portal aktivieren
  xdg.portal = {
    enable = true;
    # Wichtig: wlr unterstützt KEINE Kameras!
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome  # oder
    ];
  };
  
}
