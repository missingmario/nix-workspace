
{ ... }:
{
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = true;

    profileExtra = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
    '';

    initContent = ''
      eval "$(mise activate zsh)"
    '';
  };
}
