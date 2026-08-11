{
  lib,
  config,
  pkgs,
  ...
}:
[]
++ import ./niri/deps.nix {inherit pkgs;}
++ lib.optionals config.de.enableHypr (import ./hyprland/deps.nix)
