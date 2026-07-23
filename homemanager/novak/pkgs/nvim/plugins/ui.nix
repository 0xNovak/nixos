{
  programs.nvf.settings.vim = {
    binds.whichKey = {
      enable = true;
      register = {
        "<leader>f" = "+find/file";
        "<leader>s" = "+split";
        "<leader>b" = "+buffer";
        "<leader>g" = "+git";
        "<leader>u" = "+ui";

        "<leader>l" = null;
        "<leader>lw" = null;
        "<leader>h" = null;
      };

      setupOpts = {
        notify = true;
        preset = "helix";
        sort = [
          "order"
          "group"
          "alphanum"
        ];
      };
    };
    notify.nvim-notify.enable = true;
    ui.noice.enable = true;
    statusline.lualine.enable = true;
    tabline.nvimBufferline.enable = true;

    lsp.trouble.enable = true;
    theme = {
      enable = true;
      name = "catppuccin";
      style = "macchiato";
      transparent = true;
    };
  };
}
