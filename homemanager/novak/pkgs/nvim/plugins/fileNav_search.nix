{
  programs.nvf.settings.vim = {
    telescope.enable = true;
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        filesystem.window.mappings = {
          "l" = "open";
          "<CR>" = "open";
          "h" = "close_node";
        };
        filesystem.window.follow_current_file.enabled = true;
        defaults.vimgrep_arguments = [
          "\${pkgs.ripgrep.out}/bin/rg"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
        ];
      };
    };
    utility.oil-nvim = {
      enable = true;
      gitStatus.enable = true;
    };
  };
}
