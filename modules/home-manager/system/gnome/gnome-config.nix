{ pkgs, lib, config, inputs, ... }:

let
  flatery-icons = pkgs.stdenvNoCC.mkDerivation {
    pname = "flatery-icon-theme";
    version = "unstable";
    src = pkgs.fetchFromGitHub {
      owner = "cbrnix";
      repo = "Flatery";
      tag = "Flatery";
      sha256 = "sha256-cOoID7ykJmu6ZVb6kQwgLZJ1Vr4HEuSxX84pZKTu+k4=";
    };
    dontBuild = true;
    installPhase = ''
      runHook preInstall
      mkdir -p $out/share/icons
      for d in Flatery Flatery-*; do
        [ -d "$d" ] && cp -r "$d" "$out/share/icons/"
      done
      runHook postInstall
    '';
    dontCheckForBrokenSymlinks = true;
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

    home.packages = [
      flatery-icons
      inputs.orchis-reborn.packages.${pkgs.stdenv.hostPlatform.system}.all
    ];

    services.gpg-agent.pinentry.program = "pinentry-gnome3";

    gtk = {
      enable = true;
      theme = {
        # name = "Orchis-Green-Light";
        # package = pkgs.orchis-theme;
        name = "adw-gtk3";
        package = pkgs.adw-gtk3;
      };
      gtk4.theme = {
        name = "Orchis-Reborn";
        package = inputs.orchis-reborn.packages.${pkgs.stdenv.hostPlatform.system}.Orchis-Reborn;
      };
      iconTheme = {
        name = "Flatery-Teal";
        package = flatery-icons;
      };
    };

    home.pointerCursor = {
      enable = true;
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };
  };
}
