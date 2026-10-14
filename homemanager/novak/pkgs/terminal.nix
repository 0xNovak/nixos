{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.uv = {
    enable = true;
    python.versions = ["3.12" "3.13"];
  };
  home.packages = with pkgs; [
    bat # cat
    eza # ls
    broot # interactive tree
    fzf
    fd

    btop # resource man
    gping # ping w/ ui
    procs # ps - active uproceses

    calc
  ];
}
