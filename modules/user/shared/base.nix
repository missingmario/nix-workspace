{ pkgs, ... }:
{
  imports = [
    ./shell.nix
    ./git.nix
    ./programs.nix
  ];

  home.stateVersion = "25.11";

  home.packages = [
    pkgs.mise

    pkgs.nixd
    pkgs.nixfmt-rfc-style
  ];
}
