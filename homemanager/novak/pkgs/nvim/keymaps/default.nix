{
  programs.nvf.settings.vim = {
    vendoredKeymaps.enable = false;
    globals.mapleader = " ";
    keymaps =
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
          key = "<leader>sv";
          mode = ["n"];
          action = "<CMD>vsplit<CR>";
          silent = true;
          desc = "split verical";
        }
        {
          key = "<leader>sh";
          mode = ["n"];
          action = "<CMD>split<CR>";
          silent = true;
          desc = "split horizontal";
        }
      ]
      ++ import ./movment.nix
      ++ import ./fileNav_search.nix
      ++ import ./git.nix
      ++ import ./quickFix.nix
      ++ import ./ui.nix
      ++ import ./ai.nix
      ++ import ./buffer.nix;
  };
}
