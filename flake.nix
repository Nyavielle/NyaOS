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
    hostname = "NyaOS";
    system = "x86_64-linux";
    stateVersion = "25.05";
    timezone = "Europe/Kyiv";
  in
  {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem
    {
      system = system;
      specialArgs = { inherit inputs user hostname system stateVersion timezone; };
      
      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${user} = ./NyaOS/home-manager/home.nix;
          home-manager.extraSpecialArgs = { inherit inputs user hostname system stateVersion timezone; };
        }
      ];
    };
  };
}
