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
    novak.enable = false;
    kitty.enable = false;
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
