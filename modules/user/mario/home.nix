{ pkgs, ... }:
{
  imports = [
    ../shared/base.nix
  ];

  home.packages = [
    pkgs.lua-language-server
    pkgs.texliveFull
    pkgs.pandoc
  ];

  programs.git = {
    userName = "Mario Sanchez Lara";
    userEmail = "mario@mariosl.com";
  };
}
