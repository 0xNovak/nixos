{
  programs.noctalia.settings.idle = {
    behavior_order = ["lock" "screen-off" "lock-and-suspend"];
    pre_action_fade_secconds = 2.0;
    behavior = {
      lock = {
        action = "";
        command = "";
        enabled = true;
        resume_command = "";
        timeout = 240.0;
      };
      lock-and-suspend = {
        action = "";
        command = "";
        enabled = true;
        resume_command = "";
        timeout = 420.0;
      };
      screen-off = {
        action = "";
        command = "";
        enabled = true;
        resume_command = "";
        timeout = 330.0;
      };
    };
  };
}
