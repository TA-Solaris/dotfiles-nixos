{
  description = "NixOS + Darwin flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
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

  outputs = { self, nixpkgs, home-manager, nix-darwin, nvf, mac-app-util, ... }@inputs: {
    nixosConfigurations = {
      ed-xps = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/ed-xps/configuration.nix
          home-manager.nixosModules.default
        ];
      };
    };

    darwinConfigurations = {
      ed-incyan = nix-darwin.lib.darwinSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/ed-incyan/configuration.nix
          mac-app-util.darwinModules.default
          home-manager.darwinModules.default
        ];
      };
    };
  };
}
