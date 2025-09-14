{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, nvf, nix-darwin, ... }@inputs: {
    
    # NVF
    packages = {
      x86_64-linux.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [ ./modules/home-manager/terminal/neovim/nvf-config.nix ];
        }).neovim;

      x86_64-darwin.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-darwin;
          modules = [ ./modules/home-manager/terminal/neovim/nvf-config.nix ];
        }).neovim;

      aarch64-darwin.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;
          modules = [ ./modules/home-manager/terminal/neovim/nvf-config.nix ];
        }).neovim;
    };
     
    nixosConfigurations = {
      ed-nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/ed-nixos/configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };
    };

    darwinConfigurations = {
      ed-incyan = nix-darwin.lib.darwinSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/ed-incyan/configuration.nix
          inputs.home-manager.darwinModules.default
        ];
      };
    };
  };
}
