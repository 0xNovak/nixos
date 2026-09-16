{
  programs.nvf.settings.debugger.nvim-dap = {
    enable = true;
    ui.enable = true;

    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DiagnosticSignError";
      };
      dapBreakpointCondition = {
        text = "◆";
        texthl = "DiagnosticSignWarn";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DiagnosticSignInfo";
      };
      dapStopped = {
        text = "▶";
        texthl = "DiagnosticSignWarn";
      };
      dapBreakpointRejected = {
        text = "✗";
        texthl = "DiagnosticSignError";
      };
    };
  };
}
