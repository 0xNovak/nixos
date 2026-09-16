[
  {
    key = "<leader>ca";
    mode = "n";
    action = "vim.lsp.buf.code_action";
    lua = true;
    silent = true;
    desc = "code action";
  }
  {
    key = "<leader>cf";
    mode = "n";
    lua = true;
    silent = true;
    action = "vim.lsp.buf.format";
    desc = "format buffer";
  }
  {
    key = "<leader>ch";
    mode = "n";
    action = "ClangdSwitchSourceHeader";
    silent = true;
    desc = "Switch header/source (clangd)";
  }
  {
    key = "<leader>cr";
    mode = "n";
    lua = true;
    silent = true;
    action = "vim.lsp.buf.rename";
    desc = "rename symbol";
  }
  {
    key = "<leader>cs";
    mode = "n";
    silent = true;
    action = "<CMD>Trouble symbols toggle<CR>";
    desc = "toggle symbols (trouble)";
  }
  {
    key = "<leader>cS";
    mode = "n";
    silent = true;
    action = "<CMD>Trouble lsp toggle focus=true win.type=float<CR>";
    desc = "toggle symbols (trouble)";
  }
  {
    key = "<leader>db";
    mode = "n";
    lua = true;
    action = "require('dap').toggle_breakpoint";
    desc = "DAP: Toggle breakpoint";
  }
  {
    key = "<leader>dB";
    mode = "n";
    lua = true;
    action = "function() require('dap').set_breakpoint(vim.fn.input('Condition: ')) end";
    desc = "DAP: Conditional breakpoint";
  }
  {
    key = "<leader>dc";
    mode = "n";
    lua = true;
    action = "require('dap').continue";
    desc = "DAP: Continue/Start";
  }
  {
    key = "<leader>di";
    mode = "n";
    lua = true;
    action = "require('dap').step_into";
    desc = "DAP: Step into";
  }
  {
    key = "<leader>do";
    mode = "n";
    lua = true;
    action = "require('dap').step_over";
    desc = "DAP: Step over";
  }
  {
    key = "<leader>dO";
    mode = "n";
    lua = true;
    action = "require('dap').step_out";
    desc = "DAP: Step out";
  }
  {
    key = "<leader>dr";
    mode = "n";
    lua = true;
    action = "require('dap').repl.toggle";
    desc = "DAP: Toggle REPL";
  }
  {
    key = "<leader>dl";
    mode = "n";
    lua = true;
    action = "require('dap').run_last";
    desc = "DAP: Run last";
  }
  {
    key = "<leader>dt";
    mode = "n";
    lua = true;
    action = "require('dap').terminate";
    desc = "DAP: Terminate session";
  }
  {
    key = "<leader>du";
    mode = "n";
    lua = true;
    action = "require('dapui').toggle";
    desc = "DAP: Toggle UI";
  }
  {
    key = "<leader>dh";
    mode = "n";
    lua = true;
    action = "require('dap.ui.widgets').hover";
    desc = "DAP: Hover variable";
  }
]
