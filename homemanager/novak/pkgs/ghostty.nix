{
  config,
  lib,
  ...
}: {
  options.conf.ghostty.enable = lib.mkEnableOption "Enable Ghostty";
  config = lib.mkIf config.conf.ghostty.enable {
    programs.ghostty = {
      enable = true;
      enableZshIntegration = true;
      enableBashIntegration = true;
      settings = {
        background-opacity = 0.8;
        background-blur-radius = 20;

        font-family = "JetBrainsMono Nerd Font";
        font-size = 12;
      };
    };
  };
}
