{inputs, ...}: {
  programs.nvf.enable = true;
  imports = [
    inputs.nvf.homeManagerModules.default
    ./editor.nix
    ./plugins
    ./lsp
    ./keymaps
  ];
}
