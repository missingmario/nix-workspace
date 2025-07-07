{
  description = "missingmario's nix workspace";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, home-manager }:
    let
    configuration = { ... }: {
      nix.settings.experimental-features = "nix-command flakes";
      nixpkgs.hostPlatform = "aarch64-darwin";
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 6;
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
        home-manager.darwinModules.home-manager
        configuration
        ./modules/system/macbook-air-work
        ./modules/user/mario-rotau
      ];
    };
  };
}
