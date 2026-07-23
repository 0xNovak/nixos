{ config, lib, ... }:
{
  config = lib.mkIf config.de.enableHypr {
    services.hyprlauncher = {
      enable = true;
      settings = { };
    };
  };
}
