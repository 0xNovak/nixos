{
  programs.noctalia.settings.bar = {
    order = ["main" "etc"];
    main = {
      enabled = true;
      autohide = false;
      smart_auto_hide = false;
      layer = "top";
      position = "top";
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
      center = ["clock" "notifications"];
      end = ["tray" "group:g3" "battery" "session"];

      capsule_group = [
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
          members = ["volume" "brightness"];
          opacity = 1.0;
          padding = 6.0;
        }
      ];
    };
    etc = {
      enabled = true;
      autohide = true;
      smart_auto_hide = false;
      layer = "top";
      position = "left";
      reserve_space = false;

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
      margin_ends = 250;

      contact_shadow = false;
      hover_highlight = true;
      widget_spacing = 6;

      start = ["power_profile" "bluetooth" "network" "cpu"];
      center = ["audio_visualizer" "media"];
      end = ["clipboard" "weather"];
    };
  };
}
