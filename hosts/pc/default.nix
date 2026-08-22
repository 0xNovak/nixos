# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules
    ../../modules/services.nix
    ../../modules/desktop.nix
    ../../modules/fonts.nix
    ../../modules/laptop_services.nix
  ];
  networking.hostName = "nixos-pc"; # Define your hostname.

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."novak" = {
    isNormalUser = true;
    description = "0xNovak";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;

  programs.git.config = {
    enable = true;
    init.defaultBranch = "main";
  };

  environment.systemPackages = with pkgs; [
    wget
  ];

  services.xserver.videoDrivers = ["nvidia"];
  hardware = {
    graphics.enable = true;
    graphics.enable32Bit = true;
    nvidia = {
      modesetting.enable = true;
      open = false;
    };
  };
  boot.kernelParams = [
    "nvidia-drm.modeset=1"
    "nvidia-drm.fbdev=1"
  ];
  boot.blacklistedKernelModules = ["nouveau"];

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-hyprland];
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05"; # Did you read the comment?
}
