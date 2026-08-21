#collection for everything in <leader>a menu
[
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
