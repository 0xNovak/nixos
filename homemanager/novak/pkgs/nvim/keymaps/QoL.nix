[
  {
    key = "x";
    mode = [
      "n"
      "v"
    ];
    action = "\"_x";
    silent = true;
    desc = "delete char without yanking it";
  }
  {
    key = "<Esc>";
    mode = ["n"];
    action = "<CMD>noh<CR>";
    silent = true;
    desc = "no highlight search";
  }
  {
    mode = "n";
    key = "q:";
    action = "<Nop>";
  }
  {
    mode = "n";
    key = "q/";
    action = "<Nop>";
  }
  {
    mode = "n";
    key = "q?";
    action = "<Nop>";
  }
]
