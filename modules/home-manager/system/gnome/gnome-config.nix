{ pkgs, lib, config, ... }:

let 
  flatery = pkgs.fetchFromGitHub {
    owner = "cbrnix";
    repo = "Flatery";
    tag = "Flatery";
    sha256 = "sha256-cOoID7ykJmu6ZVb6kQwgLZJ1Vr4HEuSxX84pZKTu+k4=";
  };
in
{
  options = {
    gnome-config.enable = lib.mkEnableOption "Enable GNOME configuration";
  };

  config = lib.mkIf config.gnome-config.enable {
    # PFP
    home.file.".face" = {
      source = ./.face.png;
    };
    
    home.file.".icons" = {
      source = "${flatery}";
    };
    
    services.gpg-agent.pinentry.program = "pinentry-gnome3";
    
    gtk = {
      enable = true;
      theme = {
        name = "Orchis-Green-Light";
        package = pkgs.orchis-theme;
      };
    };
  };
}
