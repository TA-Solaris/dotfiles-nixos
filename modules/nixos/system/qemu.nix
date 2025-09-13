{ pkgs, lib, config, ... }: {

  options = {
    qemu.enable = lib.mkEnableOption "enable qemu";
  };

  config = lib.mkIf config.qemu.enable {
    environment.systemPackages = [
      pkgs.qemu
      pkgs.virt-manager
    ];
  };

}
