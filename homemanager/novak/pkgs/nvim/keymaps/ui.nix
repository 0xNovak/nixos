[
  {
    key = "<leader>\\";
    mode = ["n"];
    action = "<CMD>ToggleTerm<CR>";
    silent = true;
    desc = "open terminal (float)";
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
    key = "<leader>uz";
    mode = "n";
    action = ":ZenMode<CR>";
    silent = true;
    desc = "Toggle zen mode";
  }
  {
    key = "<leader>uT";
    mode = "n";
    action = ":Twilight<CR>";
    silent = true;
    desc = "Toggle dimming";
  }
  {
    key = "<leader>z";
    mode = "n";
    action = ":ZenMode<CR>";
    silent = true;
    desc = "Toggle zen mode";
  }
  {
    key = "<leader>uw";
    mode = "n";
    action = "<CMD>set wrap! linebreak!<CR>";
    silent = true;
    desc = "toggle line wrap";
  }
  {
    key = "<leader>un";
    mode = "n";
    action = "<CMD>set relativenumber! <CR>";
    silent = true;
    desc = "Toggle relative line numbers";
  }
  {
    key = "<leader>uN";
    mode = "n";
    action = "<CMD>set number!<CR>";
    silent = true;
    desc = "Toggle line numbers";
  }
  {
    key = "<leader>us";
    mode = "n";
    action = "<CMD>set spell!<CR>";
    silent = true;
    desc = "Toggle line wrap";
  }
]
