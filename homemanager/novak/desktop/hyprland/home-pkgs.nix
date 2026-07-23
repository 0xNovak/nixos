{ pkgs, config, lib, ... }: {
  config = lib.mkIf config.de.enableHypr
    {
      home.packages = with pkgs; [
        grim
        slurp
      ];
    };
}

