{pkgs, ...}: let
  vimgrepArgs = [
    "${pkgs.ripgrep.out}/bin/rg"
    "--color=never"
    "--no-heading"
    "--with-filename"
    "--line-number"
    "--column"
    "--smart-case"
  ];
in {
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;
      setupOpts.defaults.vimgrep_arguments = vimgrepArgs;
    };
  };
  filetree.neo-tree = {
    enable = true;
    setupOpts = {
      filesystem.window.mappings = {
        "l" = "open";
        "<CR>" = "open";
        "h" = "close_node";
      };
      filesystem.window.follow_current_file.enabled = true;
      defaults.vimgrep_arguments = vimgrepArgs;
    };
  };
  utility.oil-nvim = {
    enable = true;
    gitStatus.enable = true;
  };
}
