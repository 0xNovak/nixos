{...}:{
  security.rtkit.enable = true;
  services = {
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

  services.openssh.enable = true;
}
