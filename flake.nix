{
  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "nixpkgs/nixos-26.05";
    snappy-switcher.url = "github:OpalAayan/snappy-switcher";
    # snappy-switcher.url = "github:OpalAayan/snappy-switcher/345e1504f8a6c9d7c2cc4edf8670745a4835c4ca";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    # NOTE: 'nixos' is the default hostname
    nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      modules = [ 
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {
           	  inherit inputs;
            };
            users.comar = {
              imports = [
                ./home.nix
              ];
            };
            backupFileExtension = "backup";
          };
        } 
      ];
    };
  };
}

