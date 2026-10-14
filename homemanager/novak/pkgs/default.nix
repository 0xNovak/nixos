{pkgs, ...}: {
  imports = [
    ./nvim
    ./desktopApps.nix
    ./librewolf.nix
    ./kitty.nix
    ./photoediting.nix
    ./terminal.nix
    ./utility.nix
    ./ghostty.nix
    ./srcBuild/own.nix
  ];

  home.packages = with pkgs; [
    rustup
    gcc
    wget
    curl
    wl-clipboard
    wl-clipboard-x11
  ];
}
