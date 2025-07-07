{ ... }:
{
  users.users."mario" = {
    home = "/Users/mario";
  };

  home-manager.users."mario" = ./home.nix;
}
