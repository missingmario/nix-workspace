{ config, ... }:
let
rootDir = "/etc/nix-darwin";
xdgConfigDir = "${rootDir}/modules/xdg-config";
in
{
  programs.neovim.enable = true;
  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${xdgConfigDir}/nvim";
  };

  xdg.configFile."ghostty" = {
    source = config.lib.file.mkOutOfStoreSymlink "${xdgConfigDir}/ghostty";
  };

  xdg.configFile."homebrew/Brewfile" = {
    source = config.lib.file.mkOutOfStoreSymlink "${xdgConfigDir}/homebrew/Brewfile";
  };

  programs.eza.enable = true;
}
