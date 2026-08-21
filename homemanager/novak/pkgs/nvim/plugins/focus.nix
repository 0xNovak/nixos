{pkgs, ...}: {
  programs.nvf.settings.extraPlugins = {
    zen-mode = {
      package = pkgs.vimPlugins.zen-mode-nvim;
      setup = ''
        require("zen-mode").setup({
          window = {
            width = 0.85,        -- 85% of editor width
            options = {
              number = false,
              relativenumber = false,
              signcolumn = "no",
            },
          },
          plugins = {
            twilight = { enabled = true }, -- auto-dim on entering zen mode
            gitsigns = { enabled = false },
            tmux = { enabled = false },
          },
        })
      '';
    };

    twilight = {
      package = pkgs.vimPlugins.twilight-nvim;
      setup = ''
        require("twilight").setup({
          treesitter = true, -- use treesitter for accurate block detection
          context = 6,       -- lines of context around the focused block
          dimming = {
            alpha = 0.25,
            inactive = true,
          },
        });
      '';
    };
  };
}
