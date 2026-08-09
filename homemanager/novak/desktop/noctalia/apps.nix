{
  programs.noctalia.settings = {
    battery.warning_threshold = 10;
    brightness = {
      enable_ddcutil = false;
      ignore_mmids = [];
      minimum_brightness = 0.01;
      sync_all_monitors = false;
    };
    calendar.enabled = false;
    controll_center = {
      hiden_tabs = [];
      sidebar = "compact";
      sidebar_section = "compact";
      width = 700;
      calendar = {
        evemt_date_format = "%A %e %B";
        event_time_format = "%H:%M";
        show_events_card = true;
        show_week_numbers = false;
      };
      shortcuts = [
        {type = "wifi";}
        {type = "bluetooth";}
        {type = "caffeine";}
        {type = "nightlight";}
        {type = "notification";}
        {type = "power_profile";}
      ];
    };
  };
}
