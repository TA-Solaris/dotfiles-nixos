{pkgs, ...}: {
  # Fingerprint sensor
  #services.fprintd.enable = true;

  # Fix screen tearing
  # https://nixos.org/manual/nixos/stable/index.html#sec-x11--graphics-cards-intel
  services.xserver.videoDrivers = ["intel"];
  services.xserver.deviceSection = ''
    Option "DRI" "2"
    Option "TearFree" "true"
  '';

  # Enable hardware acceleration
  hardware.graphics.enable = true;

  # Camera
  # Fix 2026-10-23: disable the imported camera support until the v4l2loopback module collision is fixed.
  hardware.ipu6.enable = false;
  # Tracking Issue: Intel MIPI/IPU6 webcam-support
  # https://github.com/NixOS/nixpkgs/issues/225743#issuecomment-1849613797
  #hardware.ipu6 = {
  #  enable = true;
  #  platform = "ipu6ep";
  #};
  environment.systemPackages = with pkgs; [
    libcamera
    gst_all_1.icamerasrc-ipu6ep
  ];
}
