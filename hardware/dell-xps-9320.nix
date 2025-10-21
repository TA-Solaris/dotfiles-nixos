{
  config,
  lib,
  pkgs,
  ...
}: {
  # Packages
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
    alsa-utils
    libcamera
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

  # Enable hardware acceleration
  hardware.graphics.enable = true;

  # Enable PipeWire with all features
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    
    # WirePlumber configuration to disable V4L2 and use only libcamera
    wireplumber.extraConfig = {
      # Disable V4L2 monitor to avoid duplicate camera entries
      "monitor.v4l2" = {
        "monitor.v4l2.disable" = true;
      };
      
    };
  };

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
