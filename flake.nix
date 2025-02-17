{
  description = "My first flake to rule em all";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = 
    { self
    , nixpkgs
    , home-manager
    , nixvim
    ,... 
    }@inputs:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
      	specialArgs = { inherit inputs; };
      	modules = [
          ./configuration.nix
      	];
      };
    };
    homeConfigurations = {
      braam = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	extraSpecialArgs = { inherit inputs; };
        modules = [ 
	  ./home-manager/home.nix
	];
      };
    };
  };
}
