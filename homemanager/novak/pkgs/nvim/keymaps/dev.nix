[
  {
    key = "gd";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.definition";
    silent = true;
    desc = "Go to definition";
  }

  {
    key = "gD";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.declaration";
    silent = true;
    desc = "Go to declaration";
  }
  {
    key = "gy";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.type_definition";
    silent = true;
    desc = "Go to type definition";
  }

  {
    key = "gr";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.references";
    silent = true;
    desc = "Go to references";
  }

  {
    key = "gi";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.implementation";
    silent = true;
    desc = "Go to implementation";
  }

  {
    key = "K";
    mode = "n";
    lua = true;
    action = "vim.lsp.buf.Hover";
    silent = true;
    desc = "Hover";
  }
]
