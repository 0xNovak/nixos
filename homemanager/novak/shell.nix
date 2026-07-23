{
  home.shellAliases = {
    ls = "eza -1";
    ll = "eza -l";
    l = "eza -la";
    tree = "eza -T";
    tr = "eza -Tl";
    cd = "z";

    v = "nvim";
    vimdiff = "nvim -d";

    "..." = "cd ../..";
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "extract"
        "fzf"
        "rust"
        "systemd"
        "colored-man-pages"
      ];
      theme = "bira";
    };

    history = {
      size = 10000;
      ignoreAllDups = true;
      path = "$HOME/.local/state/zsh/history";
      ignorePatterns = ["rm *" "pkill *" "cp *" "mv *"];
    };
  };
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
  };
}
