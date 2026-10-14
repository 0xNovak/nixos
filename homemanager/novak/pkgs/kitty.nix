{
  lib,
  config,
  pkgs,
  ...
}: let
  font = "JetBrainsMono Nerd Font";
  style = "powerline";
in {
  options.conf.kitty.enable = lib.mkEnableOption "Enable Kitty";
  config = lib.mkIf config.conf.kitty.enable {
    programs.kitty = {
      enable = true;

      shellIntegration.enableBashIntegration = true;
      shellIntegration.enableZshIntegration = true;

      settings = {
        font_family = font;
        font_size = 12;

        confirm_os_window_close = 0;
        enable_audio_bell = false;
        cursor_shape = "block";
        scrollback_lines = 10000;
        hide_window_decorations = "yes";

        background_opacity = "0.95";
        window_padding_width = 8;

        tab_bar_style = style;
        tab_bar_min_tabs = 2;

        allow_remote_control = true;
        listen_on = "unix:@kitty-{kitty_pid}";
      };

      keybindings = {
        "ctrl+shift+enter" = "new_window_with_cwd";
        "ctrl+shift+t" = "new_tab_with_cwd";
        "shift+f5" = "launch --cwd=current --type=background run-local-script build.sh";
        "f5" = "launch --cwd=current --type=background run-local-script run.sh";
        "ctrl+shift+f5" = "launch --cwd=current --type=background run-local-script debug.sh";
      };

      extraConfig = ''
        map ctrl+shift+n launch --type=os-window nvim
      '';
    };
    home.packages = [
      (pkgs.writeShellApplication {
        name = "run-local-script";
        text = ''
          notify() {
            noctalia msg notification-show "run-local-script" "$1"
          }

          if [ $# -lt 1 ]; then
            notify "No script name given"
            exit 1
          fi

          script=$1
          shift

          if [ -x "./$script" ]; then
            exec "./$script" "$@"
          else
            notify "No executable $script in $PWD"
          fi
        '';
      })
    ];
  };
}
