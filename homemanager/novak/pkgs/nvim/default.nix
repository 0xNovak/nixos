{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./editor.nix
    ./plugins
    ./lsp
    ./keymaps
  ];
  programs.nvf.enable = true;
}
