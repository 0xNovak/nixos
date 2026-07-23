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

  programs.hyprland = lib.mkIf enabled.enableHypr {
    enable = true;
    xwayland.enable = true;
  };
}
