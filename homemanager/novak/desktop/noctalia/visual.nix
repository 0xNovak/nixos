{
  programs.noctalia.settings = {
    theme = {
      builtin = "Gruvbox";
      mode = "dark";
      source = "builtin";
      templates = {
        enable_builtin_templates = true;
        builtin_ids = ["gtk3" "gtk4" "ghostty" "btop" "niri" "cava"];
        enable_community_templates = true;
        community_ids = ["bat" "lazygit" "fuzzel" "zellij" "yazi" "fastfetch" "discrord" "darktable"];
      };
    };
    widget = {
      active_window = {
        max_length = 200;
        min_length = 80;
        type = "active_window";
      };
      weather = {
        effects = true;
        enabled = true;
        refresh_minutes = 30;
        unit = "metric";
      };
      media = {
        art_size = 20;
        max_length = 220;
        min_length = 80;
        type = "media";
      };
      spacer = {
        interactive = false;
        type = "spacer";
      };
      spacer_2 = {
        length = 34;
        type = "spacer";
      };
      spacer_3 = {
        length = 15;
        type = "spacer";
      };
      workspaces = {
        scroll_repeat = "steps";
        stype = "minimal";
        type = "workspaces";
      };
    };
  };
}
