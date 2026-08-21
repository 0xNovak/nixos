#collection for everything in <leader>f menu
[
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
    desc = "find buffer";
  }
]
