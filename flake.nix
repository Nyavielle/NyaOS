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
    args = { inherit inputs user hostname system stateVersion timezone; };
  in
  {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem
    {
      system = system;
      specialArgs = args;
      
      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          extraSpecialArgs = args;
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${user} = ./home-manager/home.nix;
        }
      ];
    };
  };
}
