{ pkgs, lib, ... } : {
  
  imports = [
    ./users/ed.nix
    ./gnome.nix
    ./pipewire.nix
    ./network-manager.nix
    ./fonts.nix
    ./android-studio.nix
    ./arduino.nix
    ./dotnet.nix
    ./btop.nix
    ./burpsuite.nix
    ./cloc.nix
    ./cmake.nix
    ./cmatrix.nix
    ./cowsay.nix
    ./cursor.nix
    ./dart.nix
    ./docker.nix
    ./dust.nix
    ./fortune.nix
    ./fzf.nix
    ./gallery-dl.nix
    ./chromium.nix
    ./gparted.nix
    ./jdk.nix
    ./lazydocker.nix
    ./lazygit.nix
    ./lolcat.nix
    ./nmap.nix
    ./nodejs.nix
    ./python.nix
    ./php.nix
    ./rust.nix
    ./sl.nix
    ./traceroute.nix
    ./net-tools.nix
    ./wget.nix
    ./wireshark.nix
    ./wireguard.nix
    ./yt-dlp.nix
    ./qemu.nix
    ./gummi.nix
    ./dconf-editor.nix
    ./discord.nix
    ./postman.nix
    ./whatsapp.nix
    ./eyedropper.nix
    ./curtail.nix
    ./jellyfin.nix
    ./pdfarranger.nix
    ./clamtk.nix
    ./sigil.nix
    ./caprine.nix
    ./spotify.nix
    ./metadata-cleaner.nix
    ./dbeaver.nix
    ./paper-clip.nix
    ./proton.nix
    ./diffuse.nix
    ./gimp.nix
    ./audacity.nix
    ./ghex.nix
    ./lorem.nix
    ./libreoffice.nix
    ./signal.nix
    ./switcheroo.nix
    ./zenmap.nix
    ./tor.nix
    ./vlc.nix
    ./retroarch.nix
    ./ffmpeg.nix
    ./gamemode.nix
    ./steam.nix
  ];
  
  users.ed.enable = lib.mkDefault true;
  gnome.enable = lib.mkDefault true;
  pipewire.enable = lib.mkDefault true;
  network-manager.enable = lib.mkDefault true;
  fonts.enable = lib.mkDefault true;
  android-studio.enable = lib.mkDefault true;
  arduino.enable = lib.mkDefault true;
  dotnet.enable = lib.mkDefault true;
  btop.enable = lib.mkDefault true;
  burpsuite.enable = lib.mkDefault true;
  cloc.enable = lib.mkDefault true;
  cmake.enable = lib.mkDefault true;
  cmatrix.enable = lib.mkDefault true;
  cowsay.enable = lib.mkDefault true;
  cursor.enable = lib.mkDefault true;
  dart.enable = lib.mkDefault true;
  docker.enable = lib.mkDefault true;
  dust.enable = lib.mkDefault true;
  fortune.enable = lib.mkDefault true;
  fzf.enable = lib.mkDefault true;
  gallery-dl.enable = lib.mkDefault true;
  chromium.enable = lib.mkDefault true;
  gparted.enable = lib.mkDefault true;
  jdk.enable = lib.mkDefault true;
  lazydocker.enable = lib.mkDefault true;
  lazygit.enable = lib.mkDefault true;
  lolcat.enable = lib.mkDefault true;
  nmap.enable = lib.mkDefault true;
  nodejs.enable = lib.mkDefault true;
  python.enable = lib.mkDefault true;
  php.enable = lib.mkDefault true;
  rust.enable = lib.mkDefault true;
  sl.enable = lib.mkDefault true;
  traceroute.enable = lib.mkDefault true;
  net-tools.enable = lib.mkDefault true;
  wget.enable = lib.mkDefault true;
  wireshark.enable = lib.mkDefault true;
  wireguard.enable = lib.mkDefault true;
  yt-dlp.enable = lib.mkDefault true;
  qemu.enable = lib.mkDefault true;
  gummi.enable = lib.mkDefault true;
  dconf-editor.enable = lib.mkDefault true;
  discord.enable = lib.mkDefault true;
  postman.enable = lib.mkDefault true;
  whatsapp.enable = lib.mkDefault true;
  eyedropper.enable = lib.mkDefault true;
  curtail.enable = lib.mkDefault true;
  jellyfin.enable = lib.mkDefault true;
  pdfarranger.enable = lib.mkDefault true;
  clamtk.enable = lib.mkDefault true;
  sigil.enable = lib.mkDefault true;
  caprine.enable = lib.mkDefault true;
  spotify.enable = lib.mkDefault true;
  metadata-cleaner.enable = lib.mkDefault true;
  dbeaver.enable = lib.mkDefault true;
  paper-clip.enable = lib.mkDefault true;
  proton.enable = lib.mkDefault true;
  diffuse.enable = lib.mkDefault true;
  gimp.enable = lib.mkDefault true;
  audacity.enable = lib.mkDefault true;
  ghex.enable = lib.mkDefault true;
  lorem.enable = lib.mkDefault true;
  libreoffice.enable = lib.mkDefault true;
  signal.enable = lib.mkDefault true;
  switcheroo.enable = lib.mkDefault true;
  zenmap.enable = lib.mkDefault true;
  tor.enable = lib.mkDefault true;
  vlc.enable = lib.mkDefault true;
  retroarch.enable = lib.mkDefault true;
  ffmpeg.enable = lib.mkDefault true;
  gamemode.enable = lib.mkDefault true;
  steam.enable = lib.mkDefault true;
  
}
