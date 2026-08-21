#collection for everything in <leader>b menu
[
  {
    key = "<leader>bd";
    mode = ["n"];
    action = "<CMD>bd<CR>";
    silent = true;
    desc = "delete current buffer";
  }
  {
    key = "<leader>bo";
    mode = ["n"];
    action = "<CMD>BufferLineCloseOthers<CR>";
    silent = true;
    desc = "delete other buffers";
  }
  {
    key = "<leader>br";
    mode = ["n"];
    action = "<CMD>BufferLineCloseRight<CR>";
    silent = true;
    desc = "delete buffers to right";
  }
  {
    key = "<leader>bl";
    mode = ["n"];
    action = "<CMD>BufferLineCloseLeft<CR>";
    silent = true;
    desc = "delete buffers to left";
  }
  {
    key = "<leader>be";
    mode = ["n"];
    action = "<CMD>Neotree buffer toggle<CR>";
    silent = true;
    desc = "toggle buffer explorer";
  }
]
