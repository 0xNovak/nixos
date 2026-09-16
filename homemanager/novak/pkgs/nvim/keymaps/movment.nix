[
  {
    key = "<S-l>";
    mode = "n";
    action = "<CMD>BufferLineCycleNext<CR>";
    silent = true;
    desc = "switch to next buffer";
  }
  {
    key = "<S-h>";
    mode = "n";
    action = "<CMD>BufferLineCyclePrev<CR>";
    silent = true;
    desc = "switch to prev buffer";
  }
  {
    key = "<C-h>";
    mode = "n";
    action = "<C-w>h";
    silent = true;
    desc = "split move H";
  }
  {
    key = "<C-j>";
    mode = "n";
    action = "<C-w>j";
    silent = true;
    desc = "split move J";
  }
  {
    key = "<C-k>";
    mode = "n";
    action = "<C-w>k";
    silent = true;
    desc = "split move K";
  }
  {
    key = "<C-l>";
    mode = "n";
    action = "<C-w>l";
    silent = true;
    desc = "split move L";
  }

  ## lsp movment
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
]
++ import ./movment.files.nix
++ import ./movment.ui.nix
