{...}: {
  home = {
    username = "novak";
    homeDirectory = "/home/novak";
    stateVersion = "26.05";

    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };
  imports = [
    ./desktop
    ./pkgs
    ./shell.nix
  ];

  # configuration for home modules
  conf = {
    novak.enable = true;
    kitty.enable = true;
    ghostty.enable = false;
  };

  programs.git = {
    enable = true;
    settings.user = {
      name = "0xNovak";
      email = "181787300+0xNovak@users.noreply.github.com";
    };
  };
}
