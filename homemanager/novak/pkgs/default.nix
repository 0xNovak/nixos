{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./nvim
    ./librewolf.nix
    ./ghostty.nix
    ./obsidian.nix
    ./messeges.nix
    ./yazi.nix
    ./spotify.nix
    ./uv.nix
  ];
  programs.mpv.enable = true;

  home.packages = with pkgs;
    [
      doublecmd
    ]
    ++ (import ./homepkgs_imports/modernUnix.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/dev.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/photoediting.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/utility.nix {inherit pkgs;})
    ++ (import ../desktop/pkgDeps.nix {inherit pkgs lib config;});
}
