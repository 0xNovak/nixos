{
  config,
  lib,
  ...
}: let
  enabled = config.de;
in {
  imports = [./shared_.nix];
  services.xserver.enable = true;
  services.displayManager.gdm.enable = true;

  programs.niri.enable = enabled.enableNiri;
}
