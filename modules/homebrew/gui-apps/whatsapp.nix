{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    whatsapp-brew.enable = lib.mkEnableOption "enable whatsapp brew";
  };

  config = lib.mkIf config.whatsapp-brew.enable {
    homebrew.casks = [
      "whatsapp"
    ];
  };
}
