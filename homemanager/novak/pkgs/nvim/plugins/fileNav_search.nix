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
      };
    };
    utility.oil-nvim = {
      enable = true;
      gitStatus.enable = true;
    };
  };
}
