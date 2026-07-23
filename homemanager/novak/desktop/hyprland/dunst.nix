{ config, lib, ... }:
{
  config = lib.mkIf config.de.enableHypr {
    services.dunst = {
      enable = true;
      settings = { };
    };
  };
}
