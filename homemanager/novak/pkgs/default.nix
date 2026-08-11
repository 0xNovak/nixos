{
  pkgs,
  config,
  ...
}: {
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
    ++ (import ./dev.nix {inherit pkgs;})
    ++ (import ../desktop/pkgDeps.nix {inherit pkgs lib config;});
}
