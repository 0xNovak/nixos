{
  lib,
  config,
  ...
}: {
  # config = lib.mkIf config.de.enableNiri {
  xdg.configFile."niri/".source = ./config;
  # };
  imports = [../dunst.nix];
}
