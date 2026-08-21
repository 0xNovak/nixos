{
  programs.nvf.settings.vim = {
    binds.whichKey = {
      enable = true;
      register = {
        "<leader>a" = "+ai";
        "<leader>f" = "+find/file";
        "<leader>c" = "+code";
        "<leader>b" = "+buffer";
        "<leader>w" = "+window";
        "<leader>g" = "+git";
        "<leader>u" = "+ui";
        "<leader>x" = "+diagnostics/quickFix";
        "<leader>t" = "+tabs";

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
    options.confirm = true;
    notify.nvim-notify.enable = true;
    ui.noice.enable = true;
    tabline.nvimBufferline.enable = true;
    statusline.lualine.enable = true;
    luaConfigRC.recordingStatus = ''
      local lualine_ok, lualine = pcall(require, "lualine")
      if lualine_ok then
        local cfg = lualine.get_config()
        table.insert(cfg.sections.lualine_x, 1, {
          function()
            local reg = vim.fn.reg_recording()
            if reg == "" then return "" end
            return "Recording @" .. reg
          end,
          color = { fg = "#ff9e64" },
        })
        lualine.setup(cfg)
      end
    '';

    lsp.trouble.enable = true;
    theme = {
      enable = true;
      name = "catppuccin";
      style = "macchiato";
      transparent = true;
    };
  };
}
