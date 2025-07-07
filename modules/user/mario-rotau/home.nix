{ ... }:
{
  imports = [
    ../shared/base.nix
  ];

  programs.git = {
    userName = "Mario Sanchez Lara";
    userEmail = "msanchez@rotau.net";
  };
}
