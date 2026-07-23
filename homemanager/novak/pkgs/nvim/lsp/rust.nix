{
  programs.nvf.settings.vim.languages = {
    rust = {
      enable = true;
      treesitter.enable = true;
      # rustaceanvim manages
      lsp.enable = false;
      dap.enable = false;
      format.enable = false;

      extensions = {
        rustaceanvim.enable = true;
        crates-nvim.enable = true;
        crates-nvim.setupOpts = {
          completion.crates.enabled = true;
          lsp = {
            enabled = true;
            hover = true;
            actions = true;
            completion = true;
          };
        };
      };
    };
  };
}
