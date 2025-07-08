{ ... }:
{
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = true;

    profileExtra = ''
      source ~/.config/zsh/modules/homebrew.zsh
    '';

    initContent = ''
      eval "$(mise activate zsh)"
    '';
  };

  xdg.configFile."zsh/modules".source = ../../xdg-config/zsh-modules;
}
