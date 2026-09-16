{
  programs.nvf.settings.vim = {
    vendoredKeymaps.enable = false;
    globals.mapleader = " ";
    keymaps =
      [
        {
          key = "K";
          mode = "n";
          lua = true;
          action = "vim.lsp.buf.hover";
          silent = true;
          desc = "Hover";
        }
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
      ++ import ./QoL.nix
      ++ import ./code.nix
      ++ import ./movment.nix
      ++ import ./ui.nix
      ++ import ./diagnostics.nix;
  };
}
