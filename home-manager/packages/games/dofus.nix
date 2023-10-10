# https://www.dofus.com/fr/forum/1713-ankama-launcher/2360581-installer-ankama-launcher-nixos
# https://gist.github.com/Zhaith-Izaliel/fca4074517059ed11f0a1157ddc07702

with import <nixpkgs>{};

let
  name = "ankama-launcher";
  src = fetchurl {
    url = "https://download.ankama.com/launcher/full/linux/x64";
    sha256 = ""; # Change for the sha256 you get after running nix-prefetch-url https://download.ankama.com/launcher/full/linux/x64
    name = "ankama-launcher.AppImage";
 };

  appimageContents = appimageTools.extractType2 { inherit name src; };
in
appimageTools.wrapType2 {
  inherit name src;

  extraInstallCommands = ''
    install -m 444 -D ${appimageContents}/zaap.desktop $out/share/applications/ankama-launcher.desktop
    sed -i 's/.*Exec.*/Exec=ankama-launcher/' $out/share/applications/ankama-launcher.desktop
    install -m 444 -D ${appimageContents}/zaap.png $out/share/icons/hicolor/256x256/apps/zaap.png
  '';
}