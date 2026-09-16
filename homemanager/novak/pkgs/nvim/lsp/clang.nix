{lib, ...}: {
  programs.nvf.settings.vim.languages = {
    clang = {
      enable = true;
      dap.enable = true;
      lsp = {
        enable = true;
        servers = ["clangd"];
      };
      format = {
        enable = true;
        type = ["clang-format"];
      };
      treesitter.enable = true;
      extraDiagnostics.enable = true;
      cHeader = true;
    };
    cmake = {
      enable = true;
      lsp.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };
  };
}
