{pkgs, ...}: {
  programs.obsidian.enable = true;
  programs.mpv.enable = true;

  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    foliate
    vlc

    doublecmd

    nautilus
    nautilus-open-any-terminal
    nautilus-python

    localsend
    croc

    zellij
    cava
    fastfetch
  ];
}
