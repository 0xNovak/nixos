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
  {
    key = "<leader>aa";
    mode = ["n" "v"];
    action = "<CMD>CopilotChatToggle<CR>";
    silent = true;
    desc = "Toggle ai chat";
  }
  {
    key = "<leader>ap";
    mode = ["n" "v"];
    action = "<CMD>CopilotChatPrompts<CR>";
    silent = true;
    desc = "Open quick-prompts";
  }
]
