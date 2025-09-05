{ pkgs, lib, config, ... }: {

  options = {
    dotnet.enable = lib.mkEnableOption "enable dotnet";
  };

  config = lib.mkIf config.dotnet.enable {
    environment.systemPackages = [
      pkgs.dotnet-sdk_9
      pkgs.dotnet-aspnetcore_9
    ];
  };

}
