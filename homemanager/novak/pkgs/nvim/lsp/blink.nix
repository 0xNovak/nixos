{pkgs, ...}: {
  programs.nvf.settings = {
    autocomplete.nvim-cmp.enable = false;
    extraPlugins.blink-copilot.package = pkgs.vimPlugins.blink-copilot;

    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      sourcePlugins.emoji.enable = true;
      setupOpts = {
        signature.enabled = false;
        sources.default = ["lsp" "path" "snippets" "buffer" "copilot"];
        sources.providers.copilot = {
          module = "blink-copilot";
          name = "Copilot";
          score_offset = 100;
          async = true;
          opts = {
            mx_completions = 3;
            debounce = 750;
            auto_refresh = {
              backward = true;
              forward = true;
            };
          };
        };
        keymap = {
          preset = "none";
          "<Tab>" = ["select_next" "fallback"];
          "<S-Tab>" = ["select_prev" "fallback"];
          "<CR>" = ["accept" "fallback"];
          "<C-e>" = ["hide" "fallback"];

          "<Down>" = ["select_next" "fallback"];
          "<Up>" = ["select_prev" "fallback"];
          "<Left>" = ["accept" "fallback"];
          "<Right>" = ["hide" "fallback"];
        };
      };
    };
  };
}
