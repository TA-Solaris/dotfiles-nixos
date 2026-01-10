{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    nixos-dev.enable = lib.mkEnableOption "enable nixos dev";
  };

  imports = [
    ./android-studio.nix
    ./android-tools.nix
    ./arduino.nix
    ./awscli.nix
    ./azure-cli.nix
    ./bruno.nix
    ./dotnet.nix
    ./burpsuite.nix
    ./chrome.nix
    ./claude.nix
    ./cloc.nix
    ./cmake.nix
    ./cursor.nix
    ./dart.nix
    ./docker.nix
    ./dotenv-cli.nix
    ./chromium.nix
    ./jetbrains.nix
    ./jdk.nix
    ./k6.nix
    ./mkcert.nix
    ./nodejs.nix
    ./python.nix
    ./php.nix
    ./poetry.nix
    ./rust.nix
    ./stripe-cli.nix
    ./twilio-cli.nix
    ./postman.nix
    ./dbeaver.nix
    ./vscode.nix
    ./wireshark.nix
    ./wrangler.nix
    ./yarn.nix
  ];

  config = lib.mkIf config.nixos-dev.enable {
    android-studio.enable = lib.mkDefault true;
    android-tools.enable = lib.mkDefault true;
    arduino.enable = lib.mkDefault true;
    awscli.enable = lib.mkDefault true;
    azure-cli.enable = lib.mkDefault true;
    bruno.enable = lib.mkDefault true;
    dotnet.enable = lib.mkDefault true;
    burpsuite.enable = lib.mkDefault true;
    chrome.enable = lib.mkDefault true;
    claude.enable = lib.mkDefault true;
    cloc.enable = lib.mkDefault true;
    cmake.enable = lib.mkDefault true;
    cursor.enable = lib.mkDefault true;
    dart.enable = lib.mkDefault true;
    docker.enable = lib.mkDefault true;
    dotenv-cli.enable = lib.mkDefault true;
    chromium.enable = lib.mkDefault true;
    jetbrains.enable = lib.mkDefault true;
    jdk.enable = lib.mkDefault true;
    k6.enable = lib.mkDefault true;
    mkcert.enable = lib.mkDefault true;
    nodejs.enable = lib.mkDefault true;
    python.enable = lib.mkDefault true;
    php.enable = lib.mkDefault true;
    poetry.enable = lib.mkDefault true;
    rust.enable = lib.mkDefault true;
    stripe-cli.enable = lib.mkDefault true;
    twilio-cli.enable = lib.mkDefault true;
    wireshark.enable = lib.mkDefault true;
    postman.enable = lib.mkDefault true;
    dbeaver.enable = lib.mkDefault true;
    vscode.enable = lib.mkDefault true;
    wrangler.enable = lib.mkDefault true;
    yarn.enable = lib.mkDefault true;
  };
}
