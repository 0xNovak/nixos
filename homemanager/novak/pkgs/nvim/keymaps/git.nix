#collection for everything in <leader>g menu
[
  {
    key = "<leader>ge";
    mode = "n";
    action = "<CMD>Neotree git_status toggle<CR>";
    silent = true;
    desc = "toggle git neotree";
  }
  {
    key = "<leader>gg";
    mode = "n";
    action = "<CMD>Neogit<CR>";
    silent = true;
    desc = "enable neogit";
  }
  {
    key = "<leader>gd";
    mode = "n";
    action = "<CMD>DiffviewOpen<CR>";
    silent = true;
    desc = "enable diffview";
  }
]
