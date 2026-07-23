{
  programs.nvf.settings.vim.languages = {
    nix = {
      enable = true;
      lsp.enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      # format.type = ["nixfmt"];
      treesitter.enable = true;
    };
    lua = {
      enable = true;
      lsp.enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };
    python = {
      enable = true;
      lsp.enable = true;
      dap.enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };
    assembly = {
      enable = true;
      lsp.enable = true;
      format = {
        enable = true;
        type = ["nasmfmt"];
      };
      treesitter.enable = true;
    };

    json = {
      enable = true;
      lsp.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };
  };
}
