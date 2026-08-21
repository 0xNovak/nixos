{
  programs.nvf.settings.vim.git = {
    enable = true;
    gitsigns = {
      enable = true;
      codeActions.enable = true;
    };
    neogit.enable = true;
  };
  programs.nvf.settings.vim = {
    utility.oil-nvim.gitStatus.enable = true;
    utility.diffview-nvim.enable = true;
  };
}
