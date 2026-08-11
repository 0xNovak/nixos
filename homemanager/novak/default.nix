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
    ../../modules/shared_.nix
    ./desktop
    ./pkgs
    ./shell.nix
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "0xNovak";
      email = "181787300+0xNovak@users.noreply.github.com";
    };
  };
}
