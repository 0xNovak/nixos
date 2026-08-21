{pkgs, ...}: {
  programs.nvf.settings.assistant.copilot = {
    enable = true; # loads copilot.lua itself — required
    cmp.enable = false; # leave off — this is the nvim-cmp path, not blink
    setupOpts = {
      panel.enabled = false;
      suggestion.enabled = false;
    };
  };
  programs.nvf.settings = {
    extraPlugins = {
      plenary-nvim = {
        package = pkgs.vimPlugins.plenary-nvim;
      };
      CopilotChat-nvim = {
        package = pkgs.vimPlugins.CopilotChat-nvim;
        after = ["plenary-nvim" "copilot-vim"]; # or copilot-lua, whichever backend you use
        setup = ''
          require("CopilotChat").setup({
            model = 'gpt-4o',
            window = {
              layout = 'vertical',
              width = 0.4,
            },
          })
        '';
      };
    };
  };
}
