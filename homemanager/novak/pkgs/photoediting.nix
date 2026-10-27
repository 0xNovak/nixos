{pkgs, ...}: {
  home.packages = with pkgs; [
    darktable
    krita
    aseprite
    exiftool
    gnome-obfuscate
    switcheroo
    timg
    qview
  ];
}
