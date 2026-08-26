{
  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  xdg.configFile."niri/scripts/".source = ./niriScripts;
  imports = [../dunst.nix];
}
