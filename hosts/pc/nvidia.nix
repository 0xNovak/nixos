{config, ...}: {
  #nvidia config for gtx1060
  services.xserver.videoDrivers = ["nvidia"];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;

    open = false;

    powerManagement.enable = false;
    powerManagement.finegrained = false;

    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };
  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    NVD_BACKEND = "direct";
  };
}
