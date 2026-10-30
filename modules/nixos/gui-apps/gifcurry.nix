{ pkgs, lib, config, ... }: let
  pname = "gifcurry";
  version = "6.0.1.0";
  src = pkgs.fetchurl {
    url = "https://github.com/lettier/gifcurry/releases/download/${version}/gifcurry-${version}-x86_64.AppImage";
    hash = "sha256-sS7huohO4/OZE/o7qV86dZBXbcMGwGRvHfUS6DJJDbI=";
  };
  appimageContents = pkgs.appimageTools.extract {
    inherit pname version src;
  };
in {
  options.gifcurry.enable = lib.mkEnableOption "enable gifcurry";

  config = lib.mkIf config.gifcurry.enable {
    environment.systemPackages = [
      # Nixpkgs marks haskellPackages.Gifcurry as broken, so use the upstream AppImage.
      (pkgs.appimageTools.wrapType2 {
        inherit pname version src;
        extraPkgs = pkgs: [ pkgs.gobject-introspection ];
        extraInstallCommands = ''
          install -Dm644 ${appimageContents}/com.lettier.gifcurry.desktop -t $out/share/applications
          install -Dm644 ${appimageContents}/com.lettier.gifcurry.svg -t $out/share/icons/hicolor/scalable/apps
          substituteInPlace $out/share/applications/com.lettier.gifcurry.desktop \
            --replace-fail 'Exec=gifcurry_gui' 'Exec=gifcurry'
        '';
        meta.platforms = [ "x86_64-linux" ];
      })
    ];
  };
}
