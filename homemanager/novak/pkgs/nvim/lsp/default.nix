{...}: {
  programs.nvf.settings = {
    lsp = {
      enable = true;
      formatOnSave = true;
      lspconfig.enable = true;
      lspSignature.enable = false;
      trouble.enable = true;
    };
    treesitter.addDefaultGrammars = true;
    formatter.conform-nvim.enable = true;
  };

  imports = [
    ./blink.nix
    ./clang.nix
    ./rust.nix
    ./webDev.nix
    ./other.nix
  ];
}
