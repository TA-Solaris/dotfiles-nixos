{
  pkgs,
  lib,
  config,
  ...
}: let
  pname = "happy-desktop";
  version = "0.0.103";
  src = pkgs.fetchurl {
    url = "https://github.com/slopus/happy-desktop/releases/download/v${version}/Happy-${version}-x64.AppImage";
    hash = "sha256-yS25VlbTGBQ1MpFWsr9shLpXwct+42yaxnrHTH7YLCU=";
  };
  appimageContents = pkgs.appimageTools.extract {
    inherit pname version src;
  };
in {
  options.happy.enable = lib.mkEnableOption "enable Happy Desktop";

  config = lib.mkIf config.happy.enable {
    environment.systemPackages = [
      (pkgs.appimageTools.wrapType2 {
        inherit pname version src;
        extraInstallCommands = ''
          install -Dm644 ${appimageContents}/*.desktop $out/share/applications/happy-desktop.desktop
          cp -r ${appimageContents}/usr/share/icons $out/share/
          sed -i 's/^Exec=.*/Exec=happy-desktop %U/' $out/share/applications/happy-desktop.desktop
        '';
        meta = {
          description = "Desktop app for Happy Agent";
          homepage = "https://github.com/slopus/happy-desktop";
          license = lib.licenses.mit;
          platforms = ["x86_64-linux"];
          mainProgram = pname;
        };
      })
    ];
  };
}
