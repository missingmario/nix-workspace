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

  programs.eza.enable = true;
}
