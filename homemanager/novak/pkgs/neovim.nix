{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./nvim/editor.nix
    ./nvim/plugins
    ./nvim/lsp
    ./nvim/keymaps
  ];
  programs.nvf.enable = true;
}
