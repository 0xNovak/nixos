{pkgs, ...}: {
  imports = [
    ./neovim.nix
    ./librewolf.nix
    ./ghostty.nix
  ];

  home.packages = with pkgs;
    [
      doublecmd
    ]
    ++ (import ./modernUnix.nix {inherit pkgs;})
    ++ (import ./dev.nix {inherit pkgs;});
}
