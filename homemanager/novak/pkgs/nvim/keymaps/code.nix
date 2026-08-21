[
  {
    key = "<leader>ca";
    mode = "n";
    action = "vim.lsp.buf.code_action";
    lua = true;
    silent = true;
    desc = "code action";
  }
  {
    key = "<leader>cf";
    mode = "n";
    lua = true;
    silent = true;
    action = "vim.lsp.buf.format";
    desc = "format buffer";
  }
  {
    key = "<leader>ch";
    mode = "n";
    action = "ClangdSwitchSourceHeader";
    silent = true;
    desc = "Switch header/source (clangd)";
  }
  {
    key = "<leader>cr";
    mode = "n";
    lua = true;
    silent = true;
    action = "vim.lsp.buf.rename";
    desc = "rename symbol";
  }
  {
    key = "<leader>cs";
    mode = "n";
    silent = true;
    action = "<CMD>Trouble symbols toggle<CR>";
    desc = "toggle symbols (trouble)";
  }
  {
    key = "<leader>cS";
    mode = "n";
    silent = true;
    action = "<CMD>Trouble lsp toggle focus=true win.type=float<CR>";
    desc = "toggle symbols (trouble)";
  }
]
