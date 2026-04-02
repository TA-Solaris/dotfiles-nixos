{
  description = "NixOS + Darwin flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf.url = "github:TA-Solaris/nvf";
    mac-app-util.url = "github:hraban/mac-app-util";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    nix-darwin,
    nvf,
    mac-app-util,
    ...
  } @ inputs: let
    mkSpecialArgs = system: {
      inherit inputs;
      pkgsStable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };
    };
  in {
    nixosConfigurations = {
      ed-xps = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = mkSpecialArgs "x86_64-linux";
        modules = [
          ./hosts/ed-xps/configuration.nix
          home-manager.nixosModules.default
        ];
      };
    };

    darwinConfigurations = {
      ed-incyan = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = mkSpecialArgs "aarch64-darwin";
        modules = [
          ./hosts/ed-incyan/configuration.nix
          mac-app-util.darwinModules.default
          home-manager.darwinModules.default
        ];
      };
    };
  };
}
