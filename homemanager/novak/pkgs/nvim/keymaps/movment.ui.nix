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
  {
    key = "<leader>t[";
    mode = ["n"];
    action = "<CMD>tabnext<CR>";
    silent = true;
    desc = "next tab";
  }
  {
    key = "<leader>t]";
    mode = ["n"];
    action = "<CMD>tabprevious<CR>";
    silent = true;
    desc = "prev tab";
  }
  {
    key = "<leader>tn";
    mode = ["n"];
    action = "<CMD>tabnew<CR>";
    silent = true;
    desc = "new tab";
  }
  {
    key = "<leader>td";
    mode = ["n"];
    action = "<CMD>tabc<CR>";
    silent = true;
    desc = "close tab";
  }
  {
    key = "<leader>l";
    mode = ["n"];
    action = "<CMD>tabnext<CR>";
    silent = true;
    desc = "next tab";
  }
  {
    key = "<leader>h";
    mode = ["n"];
    action = "<CMD>tabprevious<CR>";
    silent = true;
    desc = "prev tab";
  }
  {
    key = "<leader>w<";
    mode = "n";
    silent = true;
    action = "<CMD>vertical resize -5<CR>";
    desc = "Shrink window width";
  }
  {
    key = "<leader>w>";
    mode = "n";
    silent = true;
    action = "<CMD>vertical resize +5<CR>";
    desc = "Increase window width";
  }
  {
    key = "<leader>w-";
    mode = "n";
    silent = true;
    action = "<CMD>resize -5<CR>";
    desc = "Shrink window height";
  }
  {
    key = "<leader>w+";
    mode = "n";
    silent = true;
    action = "<CMD>resize +5<CR>";
    desc = "Increase window height";
  }
]
