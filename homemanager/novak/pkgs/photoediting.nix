{pkgs, ...}: {
  home.packages = with pkgs; [
    darktable
    krita
    exiftool
    gnome-obfuscate
    switcheroo
    timg
    qview
  ];
}
