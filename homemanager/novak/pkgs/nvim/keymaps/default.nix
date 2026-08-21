{
  programs.nvf.settings.vim = {
    vendoredKeymaps.enable = false;
    globals.mapleader = " ";
    keymaps =
      []
      ++ import ./_leader
      ++ import ./ai.nix
      ++ import ./buffer
      ++ import ./window
      ++ import ./find_file
      ++ import ./code.nix
      ++ import ./git.nix
      ++ import ./ui
      ++ import ./diagnostics.nix
      ++ import ./tabs.nix
      ++ import ./QoL.nix
      ++ import ./movment.nix;
  };
}
