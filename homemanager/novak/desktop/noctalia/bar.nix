{
  programs.noctalia.settings.bar = {
    order = ["main"];
    main = {
      enabled = true;
      autohide = false;
      smart_auto_hide = false;
      layer = "top";
      reserve_space = true;

      capsule = false;
      concave_edge_corners = true;
      shadow = true;
      show_on_workspace_switch = true;

      background_opacity = 1.0;
      border = "outline";
      border_width = 0.0;
      font_weight = 500;
      radius = 12;
      scale = 1.0;
      thickness = 34;
      margin_ends = 10;

      contact_shadow = false;
      hover_highlight = true;
      widget_spacing = 1;

      start = ["launcher" "spacer_3" "group:g2"];
      center = ["grout:g1" "spacer_2" "clock" "notifications" "spacer_3" "weahter"];
      end = ["tray" "clipboard" "group:g3" "control-center" "session"];

      capsule_group = [
        {
          enabled = true;
          id = "g1";
          members = ["audio_visualizer" "media"];
          opacity = 1.0;
          padding = 6.0;
        }
        {
          enabled = true;
          id = "g2";
          members = ["workspaces" "spacer_3" "active_window"];
          opacity = 1.0;
          padding = 6.0;
        }
        {
          enabled = true;
          id = "g3";
          members = ["bluetooth" "network" "spacer_3" "volume" "brightness" "battery"];
          opacity = 1.0;
          padding = 6.0;
        }
      ];
    };
  };
}
