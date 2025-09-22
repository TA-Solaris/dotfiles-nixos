{ pkgs, inputs, lib, ... }:

{
  imports = [
    ../../modules/home-manager/darwin.nix
  ];

  # Home Manager configuration
  home = {
    username = "edwardpotter";
    homeDirectory = "/Users/edwardpotter";
    stateVersion = "24.05";
  };

  # macOS-specific settings
  #targets.darwin = {
  #  currentHostDefaults = "NSGlobalDomain";
  #};
  
  # InCyan Git
  git-config.enable = lib.mkForce false;
  programs.git = {
    enable = true;
    userName = "Edward Potter";
    userEmail = "ep@incyan.com";
      
    extraConfig = {
      pull.rebase = true;
    };
  };

  # Custom Aliases
  home.shellAliases = {
    lifewebhost = "cd ~/dev/lifelanguages3/aspnet-core/src/InCyan.LifeLanguages.HttpApi.Host; c; DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=1 dotnet watch --non-interactive";
    lifemigrator = "cd ~/dev/lifelanguages3/aspnet-core/src/InCyan.LifeLanguages.DbMigrator; c; dotnet run";
    lifedocker = "cd ~/dev/lifelanguages3; drm; c; docker compose up --force-recreate --build";
    lifeangular = "cd ~/dev/lifelanguages3/angular; c; BROWSER=none yarn start";
    lifepublicangular = "cd ~/dev/lifelanguages3/angular-public; c; BROWSER=none yarn start:ll3";
    ciqpublicangular  = "cd ~/dev/lifelanguages3/angular-public; c; BROWSER=none yarn start:ciq";
    lifepublicwebhost = "cd ~/dev/lifelanguages3/aspnet-core/src/InCyan.LifeLanguages.Public.HttpApi.Host; c; DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=1 dotnet watch --non-interactive";
    lifeauth = "cd ~/dev/lifelanguages3/aspnet-core/src/InCyan.LifeLanguages.AuthServer; c; dotnet run";
    liferenderwebhost = "cd ~/dev/lifelanguages3/aspnet-core/src/InCyan.LifeLanguages.Renderer.HttpApi.Host; c; DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=1 dotnet watch --non-interactive";
    liferenderangular = "cd ~/dev/lifelanguages3/angular-renderer; c; BROWSER=none yarn start";
    cdlife = "cd ~/dev/lifelanguages3";

    dpcwebhost = "cd ~/dev/dpc/aspnet-core/src/InCyan.Dpc.HttpApi.Host; c; DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=1 dotnet watch --non-interactive";
    dpcmigrator = "cd ~/dev/dpc/aspnet-core/src/InCyan.Dpc.DbMigrator; c; dotnet run";
    dpcdocker = "cd ~/dev/dpc; drm; c; docker compose up --force-recreate --build";
    dpcangular = "cd ~/dev/dpc/angular; c; BROWSER=none yarn start";
    dpcauth = "cd ~/dev/dpc/aspnet-core/src/InCyan.Dpc.AuthServer; dotnet run";
    dacwebhost = "cd ~/dev/dpc/aspnet-core/src/InCyan.Dac.HttpApi.Host; c; DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=1 dotnet watch --non-interactive";
    dacangular = "cd ~/dev/dpc/angular-dac; c; BROWSER=none yarn start";
    cddpc = "cd ~/dev/dpc";
  };
}
