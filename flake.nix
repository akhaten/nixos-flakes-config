{

    description = "Akhaten configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
        home-manager = {
            url = "github:nix-community/home-manager/release-23.05";
        };
    };

    outputs = { nixpkgs, home-manager, ... }:

        let

            pkgs = import <nixpkgs> {
                config = {
                    allowUnfree = true;
                    allowUnbroken = true;
                };
            };
        
        in {
            
            # For update nixos configurations :
            ## Without flake : sudo nixos-rebuild switch
            ## With flake : sudo nixos-rebuid switch --flake 'path/of/flake#nixos'
            nixosConfigurations = {
                nixos = nixpkgs.lib.nixosSystem {
                    modules = [
                        # ./nixos-configuration/configuration.nix
                        /etc/nixos/configuration.nix
                        # ./nixos-configuration/configuration.nix
                        # home-manager.nixosModules.home-manager {
                        #     home-manager = {
                        #         useUserPackages = true;
                        #         useGlobalPkgs = true;
                        #         # users.akhaten = ./home-manager/home.nix;
                        #         users.akhaten = /home/akhaten/.config/home-manager/home.nix;
                        #     };
                        # }
                        
                    ];
                };
            };

            # For update home-manager configurations :
            ## Without flake : home-manager switch
            ## With flake : home-manager switch --flake 'path/of/flake'#akhaten
            homeConfigurations = {
                akhaten = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [
                        ./home-manager/home.nix
                        #/home/akhaten/.config/home-manager/home.nix 
                    ];
                };
            };

        };
}