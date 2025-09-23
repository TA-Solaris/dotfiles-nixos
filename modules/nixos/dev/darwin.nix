{ pkgs, lib, config, ... }: {

  options = {
    nixos-dev.enable = lib.mkEnableOption "enable nixos dev";
  };
  
  imports = [
    ./bruno.nix
    #./dotnet.nix
    ./chrome.nix
    ./cloc.nix
    ./cmake.nix
    ./colima.nix
    ./cursor.nix
    ./dart.nix
    ./docker.nix
    ./jdk.nix
    ./mkcert.nix
    #./nodejs.nix
    ./python.nix
    ./php.nix
    ./poetry.nix
    ./rust.nix
    ./stripe-cli.nix
    ./twilio-cli.nix
    ./postman.nix
    ./vscode.nix
    ./wireshark.nix
  ];

  config = lib.mkIf config.nixos-dev.enable {
    bruno.enable = lib.mkDefault true;
    #dotnet.enable = lib.mkDefault true;
    cloc.enable = lib.mkDefault true;
    cmake.enable = lib.mkDefault true;
    colima.enable = lib.mkDefault true;
    cursor.enable = lib.mkDefault true;
    dart.enable = lib.mkDefault true;
    docker.enable = lib.mkDefault true;
    jdk.enable = lib.mkDefault true;
    mkcert.enable = lib.mkDefault true;
    #nodejs.enable = lib.mkDefault true;
    python.enable = lib.mkDefault true;
    php.enable = lib.mkDefault true;
    poetry.enable = lib.mkDefault true;
    rust.enable = lib.mkDefault true;
    stripe-cli.enable = lib.mkDefault true;
    twilio-cli.enable = lib.mkDefault true;
    wireshark.enable = lib.mkDefault true;
    postman.enable = lib.mkDefault true;
    vscode.enable = lib.mkDefault true;
  };

}
