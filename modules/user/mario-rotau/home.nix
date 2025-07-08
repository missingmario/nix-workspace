{ pkgs, ... }:
{
  imports = [
    ../shared/base.nix
  ];

  home.packages = [
    pkgs.glab
  ];

  programs.git = {
    userName = "Mario Sanchez Lara";
    userEmail = "msanchez@rotau.net";
  };
}
