#collection for everything in <leader>x menu
[
  {
    key = "<leader>xt";
    mode = "n";
    action = "<CMD>TodoTrouble<CR>";
    desc = "todo trouble";
  }
  {
    key = "<leader>xf";
    mode = "n";
    action = "<CMD>TodoTelescope<CR>";
    desc = "todo telescope";
  }
  {
    key = "<leader>xx";
    mode = "n";
    action = "<CMD>lua vim.diagnostic.open_float()<CR>";
    desc = "inspect line";
  }
]
