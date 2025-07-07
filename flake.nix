{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager }:
    let
    configuration = { pkgs, ... }: {
      nix.settings.experimental-features = "nix-command flakes";

      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 6;

      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    darwinConfigurations."mario-macbook" = nix-darwin.lib.darwinSystem {
      modules = [
        home-manager.darwinModules.home-manager
          configuration
          ./modules/system/macbook-pro
          ./modules/user/mario
      ];
    };

    darwinConfigurations."mario-macbook-rotau" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
          #./nix-darwin/host/mario-macbook-rotau.nix
      ];
    };
  };
}
