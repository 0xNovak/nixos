{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
    ./bar.nix
    ./apps.nix
    ./idle.nix
    ./visual.nix
  ];
  programs.noctalia = {
    enable = true;
    settings = {
      accessibility = {
        high_contrast = false;
        ui_scale = 1.0;
      };
      audio = {
        enable_overdrive = true;
        enable_sounds = false;
      };
      backdrop = {
        blur_intensity = 0.5;
        enabled = false;
        tint_intensity = 0.3125;
      };
      location.auto_schedule = true;
    };
  };
}
