{...}: {
  programs.nvf.settings.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
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
