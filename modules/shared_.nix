{lib,...}: {
  options.de.enableHypr = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "";
  };
}
