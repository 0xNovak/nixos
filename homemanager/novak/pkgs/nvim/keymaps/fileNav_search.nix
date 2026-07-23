[
  {
    key = "<leader>e";
    mode = ["n"];
    action = "<CMD>Neotree toggle<CR>";
    silent = true;
    desc = "toggle neotree";
  }
  {
    key = "<leader>o";
    mode = ["n"];
    action = "<CMD>Oil<CR>";
    silent = true;
    desc = "toggle oil";
  }
]
++ [
  {
    key = "<leader><leader>";
    mode = "n";
    action = "<CMD>Telescope fd<CR>";
    silent = true;
    desc = "find files";
  }
  {
    key = "<leader>/";
    mode = "n";
    action = "<CMD>Telescope live_grep<CR>";
    silent = true;
    desc = "find words";
  }
  {
    key = "<leader>`";
    mode = ["n"];
    action = "<CMD>Telescope buffers<CR>";
    silent = true;
    desc = "find buffer";
  }
  ### same but throu f menu
  {
    key = "<leader>ff";
    mode = "n";
    action = "<CMD>Telescope fd<CR>";
    silent = true;
    desc = "find files";
  }
  {
    key = "<leader>fg";
    mode = "n";
    action = "<CMD>Telescope live_grep<CR>";
    silent = true;
    desc = "find words";
  }
  {
    key = "<leader>fb";
    mode = ["n"];
    action = "<CMD>Telescope buffers<CR>";
    silent = true;
    desc = "pick buffer";
  }
]
