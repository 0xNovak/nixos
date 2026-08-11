{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      nerd-fonts._3270
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      jetbrains-mono
      corefonts
    ];
    fontconfig = {
      enable = false;
      defaultFonts = {
        monospace = ["3270 Nerd Font"];
        sansSerif = ["Noto Sans"];
        serif = ["Noto Sherif"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}
