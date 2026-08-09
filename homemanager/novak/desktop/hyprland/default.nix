{
  lib,
  config,
  ...
}: {
  config = lib.mkIf config.de.enableHypr {
    wayland.windowManager.hyprland.systemd.enable = false;

    services.hyprpolkitagent.enable = true;
    services.hyprsunset.enable = true;
    services.hypridle.enable = true;
    programs.hyprlock.enable = true;

    services.awww.enable = true;
    services.cliphist.enable = true;

    programs.nnn.enable = true;
  };
  imports = [
    ../dunst.nix
  ];
}
