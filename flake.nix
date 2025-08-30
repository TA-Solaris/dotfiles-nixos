{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      ed-nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/ed-nixos/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };
    };
  };
}
