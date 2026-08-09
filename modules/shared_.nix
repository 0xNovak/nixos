{lib, ...}: {
  options.de = {
    enableHypr = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "";
    };
    enableNiri = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "";
    };
  };
}
