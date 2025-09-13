{ pkgs, lib, config, ... }: {

  options = {
    nixos-dev.enable = lib.mkEnableOption "enable nixos dev";
  };
  
  imports = [
    ./android-studio.nix
    ./arduino.nix
    ./dotnet.nix
    ./burpsuite.nix
    ./cloc.nix
    ./cmake.nix
    ./cursor.nix
    ./dart.nix
    ./docker.nix
    ./chromium.nix
    ./jdk.nix
    ./nodejs.nix
    ./python.nix
    ./php.nix
    ./rust.nix
    ./postman.nix
    ./dbeaver.nix
    ./vscode.nix
    ./wireshark.nix
  ];

  config = lib.mkIf config.nixos-dev.enable {
    android-studio.enable = lib.mkDefault true;
    arduino.enable = lib.mkDefault true;
    dotnet.enable = lib.mkDefault true;
    burpsuite.enable = lib.mkDefault true;
    cloc.enable = lib.mkDefault true;
    cmake.enable = lib.mkDefault true;
    cursor.enable = lib.mkDefault true;
    dart.enable = lib.mkDefault true;
    docker.enable = lib.mkDefault true;
    dust.enable = lib.mkDefault true;
    chromium.enable = lib.mkDefault true;
    jdk.enable = lib.mkDefault true;
    nodejs.enable = lib.mkDefault true;
    python.enable = lib.mkDefault true;
    php.enable = lib.mkDefault true;
    rust.enable = lib.mkDefault true;
    wireshark.enable = lib.mkDefault true;
    postman.enable = lib.mkDefault true;
    dbeaver.enable = lib.mkDefault true;
    vscode.enable = lib.mkDefault true;
  };

}
