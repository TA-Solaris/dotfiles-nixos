{ pkgs, lib, config, ... }: {

  options = {
    vulkan.enable = lib.mkEnableOption "enable vulkan";
  };

  config = lib.mkIf config.vulkan.enable {
    environment.systemPackages = [
      pkgs.vulkan-tools
    ];
  };

}
