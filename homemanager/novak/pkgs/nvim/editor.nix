{pkgs, ...}: {
  programs.nvf.settings = {
    # lazy.enable = false;
    lineNumberMode = "relNumber";
    visuals.nvim-web-devicons.enable = true;
    options = {
      mouse = "a";

      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
      expandtab = true;

      ignorecase = true;
      smartcase = true;

      wrap = false;
      linebreak = false;
    };
    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.xclip.enable = true;
      providers.wl-copy.enable = true;
    };

    vimAlias = true;
    viAlias = true;
    extraPackages = with pkgs;
      [
        git
        lazygit
      ]
      ++ [
        python3
        lua
        luarocks
        luaPackages.tree-sitter-cli
        nodejs
      ]
      ++ [
        trash-cli
        zip
        tectonic
        ghostscript
        mermaid-cli
      ]
      ++ [
        clang
        libclang
        clang-tools
        cmake
        ninja
        rustup
      ]
      ++ [
        fzf
        fd
        ripgrep

        wget
        curl
        wl-clipboard
        wl-clipboard-x11
      ];
  };
}
