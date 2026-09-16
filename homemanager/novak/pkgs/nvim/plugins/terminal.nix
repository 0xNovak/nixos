{
  programs.nvf.settings.vim = {
    terminal.toggleterm = {
      enable = true;
      setupOpts = {
        open_mapping = "[[<c-\\>]]";
        direction = "float";
        float_opts = {
          border = "curved";
        };
        shade_terminals = true;
        insert_mappings = true;
        terminal_mappings = true;
      };
    };
  };
}
