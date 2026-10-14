{
  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  xdg.configFile."niri/scripts/".source = ./scripts;
  imports = [
    ./deps.nix
    ../dunst.nix
  ];
}
