{ pkgs, lib, config, ... }: {
  
  options = {
    users.ed.enable = lib.mkEnableOption "enable user ed";
  };
  
  config = lib.mkIf config.users.ed.enable {
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.ed = {
      isNormalUser = true;
      description = "ed";
      extraGroups = [ "networkmanager" "wheel" "uucp" "libvirt" ];
      packages = with pkgs; [];
      shell = pkgs.zsh;
    };
  };

}
