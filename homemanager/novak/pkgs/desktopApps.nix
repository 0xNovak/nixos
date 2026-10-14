{pkgs, ...}: {
  programs.discord.enable = true;
  programs.thunderbird.enable = true;

  home.packages = with pkgs; [
    spotify
    prismlauncher
  ];
}
