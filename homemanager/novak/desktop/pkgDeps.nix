{
  lib,
  config,
  ...
}: {
  home.packages =
    []
    ++ lib.optionals config.de.enableHypr (import ./hyprland/deps.nix)
    ++ lib.optionals config.de.enableNiri (import ./niri/deps.nix);
}
