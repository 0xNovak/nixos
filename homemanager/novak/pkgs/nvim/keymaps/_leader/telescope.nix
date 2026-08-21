[
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
]
