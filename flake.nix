{
  description = "NyaOS";

  inputs = {
  
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-25.05";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { self, nixpkgs, home-manager, stylix, ... } @inputs:
  
  let
  
    user = "Nyavielle";
    
    system = "x86_64-linux";
    stateVersion = "25.05";

  in {
  
    nixosConfigurations.NyaOS = nixpkgs.lib.nixosSystem {
    
      system = system;

      specialArgs = { inherit inputs user stateVersion; };

      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${user} = ./home-manager/home.nix;

          extraSpecialArgs = { inherit inputs user stateVersion; };
        }
        
      ];
      
    };
    
  };
  
}
