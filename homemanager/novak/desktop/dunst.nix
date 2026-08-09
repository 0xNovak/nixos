{
  config,
  lib,
  ...
}: let
  CFG = config.de;
in {
  config = lib.mkIf (CFG.enableHypr || CFG.enableNiri) {
    services.dunst = {
      enable = true;
      settings = {};
    };
  };
}
