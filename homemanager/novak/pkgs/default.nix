{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./nvim
    ./librewolf.nix
    ./kitty.nix
    ./obsidian.nix
    ./messeges.nix
    ./yazi.nix
    ./uv.nix
    #./ghostty.nix
  ];
  programs.mpv.enable = true;

  home.packages = with pkgs;
    [
      spotify
      calc
      doublecmd
    ]
    ++ (import ./homepkgs_imports/modernUnix.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/dev.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/photoediting.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/utility.nix {inherit pkgs;})
    ++ (import ./homepkgs_imports/gaming.nix {inherit pkgs;})
    ++ (import ../desktop/pkgDeps.nix {inherit pkgs lib config;});
}
