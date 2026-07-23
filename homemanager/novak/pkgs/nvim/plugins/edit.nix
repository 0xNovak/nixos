{
  programs.nvf.settings.vim = {
    notes.todo-comments = {
      enable = true;
      mappings = {
        telescope = null;
        trouble = null;
        quickFix = null;
      };
      setupOpts.search.command = "rg";
    };
    visuals.indent-blankline.enable = true;
    utility.undotree.enable = true;
  };
}
