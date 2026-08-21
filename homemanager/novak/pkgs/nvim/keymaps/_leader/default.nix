[
  {
    key = "<leader>z";
    mode = "n";
    action = ":ZenMode<CR>";
    silent = true;
    desc = "Toggle zen mode";
  }
  {
    key = "<leader>|";
    mode = ["n"];
    action = "<CMD>vsplit<CR>";
    silent = true;
    desc = "split verical";
  }
  {
    key = "<leader>-";
    mode = ["n"];
    action = "<CMD>split<CR>";
    silent = true;
    desc = "split horizontal";
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
]
++import ./filenav.nix
++import ./telescope.nix
