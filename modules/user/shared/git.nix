{ ... }:
{
  programs.git = {
    enable = true;

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };

    aliases = {
      s = "status";
      adog = "log --all --decorate --oneline --graph";
    };
  };

  programs.gh.enable = true;
}
