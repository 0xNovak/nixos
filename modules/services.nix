{...}: {
  security.rtkit.enable = true;
  services = {
    flatpak.enable = true;
    printing.enable = true; # cups
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
    };
  };
  programs.nix-ld.enable = true;
  services.openssh.enable = true;
}
