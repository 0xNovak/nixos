{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
    };
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = true;
  };
}
