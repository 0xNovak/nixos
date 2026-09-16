{
  programs.kitty = {
    enable = true;

    shellIntegration.enableBashIntegration = true;
    shellIntegration.enableZshIntegration = true;

    settings = {
      font_family = "JetBrainsMono Nerd Font";
      font_size = 12;

      confirm_os_window_close = 0;
      enable_audio_bell = false;
      cursor_shape = "block";
      scrollback_lines = 10000;
      hide_window_decorations = "yes";

      background_opacity = "0.95";
      window_padding_width = 8;

      tab_bar_style = "powerline"; # or whatever style you like
      tab_bar_min_tabs = 2;
    };

    keybindings = {
      "ctrl+shift+enter" = "new_window_with_cwd";
      "ctrl+shift+t" = "new_tab_with_cwd";
    };

    extraConfig = ''
      map ctrl+shift+n launch --type=os-window nvim
    '';
  };
}
